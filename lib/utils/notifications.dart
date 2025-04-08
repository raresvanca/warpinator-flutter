import 'dart:io';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:warpinator/utils/constants.dart' as constants;

class NotificationUtils {
  static const String serviceNotificationChannelId =
      'warpinator_service_channel';
  static const String serviceNotificationChannelName = 'Warpinator Service';
  static const String serviceNotificationChannelDescription =
      'Status notifications for the Warpinator service';
  static const int serviceNotificationId = 100;

  static const String transferNotificationChannelId =
      'warpinator_transfer_channel';
  static const String transferNotificationChannelName = 'Transfers';
  static const String transferNotificationGroupKey =
      'org.perceivers25.warpinator.TRANSFERS';
  static const String transferNotificationChannelDescription =
      'Notifications for file transfers';

  static const AndroidNotificationChannel serviceNotificationChannel =
      AndroidNotificationChannel(
    serviceNotificationChannelId,
    serviceNotificationChannelName,
    description: serviceNotificationChannelDescription,
    importance: Importance.low,
    playSound: false,
    enableLights: false,
    enableVibration: false,
    showBadge: false,
  );

  static const AndroidNotificationChannel transferNotificationChannel =
      AndroidNotificationChannel(
    transferNotificationChannelId,
    transferNotificationChannelName,
    description: transferNotificationChannelDescription,
    groupId: transferNotificationGroupKey,
    importance: Importance.high,
  );

  static FlutterLocalNotificationsPlugin? _flutterLocalNotificationsPlugin;
  static bool permissionGranted = false;

  static Future<void> initializeNotifications() async {
    if (_flutterLocalNotificationsPlugin != null) return;

    _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('ic_notification');

    // TODO: proper setup for IOS and MACOS
    final DarwinInitializationSettings initializationSettingsDarwin =
        const DarwinInitializationSettings();

    final LinuxInitializationSettings initializationSettingsLinux =
        const LinuxInitializationSettings(defaultActionName: 'Open');
    final WindowsInitializationSettings initializationSettingsWindows =
        const WindowsInitializationSettings(
      appName: constants.appName,
      appUserModelId: constants.appId,
      guid: constants.appGUID,
    );

    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsDarwin,
      macOS: initializationSettingsDarwin,
      linux: initializationSettingsLinux,
      windows: initializationSettingsWindows,
    );

    await _flutterLocalNotificationsPlugin!.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
    );
  }

  static Future<void> _isAndroidPermissionGranted() async {
    if (Platform.isAndroid) {
      permissionGranted = await _flutterLocalNotificationsPlugin!
              .resolvePlatformSpecificImplementation<
                  AndroidFlutterLocalNotificationsPlugin>()
              ?.areNotificationsEnabled() ??
          false;
    }
  }

  static Future<void> requestAndCheckPermissions() async {
    _isAndroidPermissionGranted();

    if (permissionGranted) {
      return;
    }

    if (Platform.isIOS || Platform.isMacOS) {
      await _flutterLocalNotificationsPlugin!
          .resolvePlatformSpecificImplementation<
              IOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
            alert: true,
            badge: true,
            sound: true,
          );
      await _flutterLocalNotificationsPlugin!
          .resolvePlatformSpecificImplementation<
              MacOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
            alert: true,
            badge: true,
            sound: true,
          );
    } else if (Platform.isAndroid) {
      final AndroidFlutterLocalNotificationsPlugin? androidImplementation =
          _flutterLocalNotificationsPlugin!
              .resolvePlatformSpecificImplementation<
                  AndroidFlutterLocalNotificationsPlugin>();

      final bool? grantedNotificationPermission =
          await androidImplementation?.requestNotificationsPermission();

      permissionGranted = grantedNotificationPermission ?? false;

      if (permissionGranted) {
        androidImplementation?.createNotificationChannel(
          serviceNotificationChannel,
        );
        androidImplementation?.createNotificationChannel(
          transferNotificationChannel,
        );
      }
    }
  }

  static void onDidReceiveNotificationResponse(
    NotificationResponse notificationResponse,
  ) async {
    // Handle the notification response
  }
}
