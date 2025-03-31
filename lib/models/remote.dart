// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';
import 'dart:ui';

import 'package:flutter/foundation.dart' show ChangeNotifier;

enum RemoteStatus {
  connected,
  disconnected,
  connecting,
  error,
  awaitingDuplex,
}

class RemoteError extends Error {
  RemoteError({
    required this.message,
    this.isGroupCodeError = false,
    this.isCertificateError = false,
  });

  final String message;
  final bool isGroupCodeError;
  final bool isCertificateError;

  @override
  String toString() =>
      'RemoteError(message: $message, isGroupCodeError: $isGroupCodeError, isCertificateError: $isCertificateError)';
}

class Remote extends ChangeNotifier {
  Remote({
    required this.address,
    required this.port,
    required this.authPort,
    required this.serviceName,
    required this.username,
    required this.hostname,
    required this.displayName,
    required this.uuid,
    this.picture,
  })  : _staticService = false,
        _isAvailable = false,
        _status = RemoteStatus.disconnected;

  final InternetAddress address;
  final int port;
  final int authPort;

  int apiVersion = 1;

  final String serviceName;
  final String username;
  final String hostname;
  final String displayName;
  final String uuid;
  final Image? picture;

  RemoteStatus _status;

  // ignore: prefer_final_fields
  bool _staticService = false;
  // ignore: prefer_final_fields
  bool _isAvailable = false;

  RemoteStatus get status => _status;
  set status(RemoteStatus value) {
    _status = value;
    notifyListeners();
  }

  bool get isStaticService => _staticService;
  bool get isAvailable => _isAvailable;
}
