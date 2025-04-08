import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:warpinator/apps/warpinator.dart';
import 'package:warpinator/service/foreground_service.dart';
import 'package:warpinator/utils/notifications.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kDebugMode) {
    // Current development UI target platform
    // Change accordingly to the work you are doing
    debugDefaultTargetPlatformOverride = TargetPlatform.android;
  }

  await NotificationUtils.initializeNotifications();
  await NotificationUtils.requestAndCheckPermissions();

  if (Platform.isAndroid || Platform.isIOS) {
    await ForegroundService.configureService();
  }

  runApp(const WarpinatorApp());
}
