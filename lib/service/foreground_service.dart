import 'dart:ui';

import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:warpinator/utils/notifications.dart';

class ForegroundService {
  static FlutterBackgroundService? _service;

  static Future<void> configureService() async {
    _service ??= FlutterBackgroundService();

    await _service!.configure(
      androidConfiguration: AndroidConfiguration(
        onStart: onStart,
        autoStart: true,
        isForegroundMode: true,
        foregroundServiceTypes: [
          AndroidForegroundType.dataSync,
        ],
        notificationChannelId: NotificationUtils.serviceNotificationChannelId,
        foregroundServiceNotificationId:
            NotificationUtils.serviceNotificationId,
        initialNotificationTitle: 'Warpinator is running',
        initialNotificationContent: 'Tap to open the app',
      ),
      iosConfiguration: IosConfiguration(
        autoStart: true,
        onForeground: onStart,
      ),
    );
  }

  static Future<void> onServiceStart(ServiceInstance service) async {
    // Note: Notifications will now work if debugDefaultTargetPlatformOverride is
    // set to another platform than the real current one

    if (service is AndroidServiceInstance) {
      if (await service.isForegroundService()) {
        await NotificationUtils.showServiceNotification();
      }
    }

    service.on('stopService').listen((event) async {
      await service.stopSelf();
      await NotificationUtils.cancelServiceNotification();
    });
  }

  static Future<void> stopService() async {
    _service?.invoke('stopService');
  }
}

@pragma('vm:entry-point')
void onStart(ServiceInstance service) async {
  DartPluginRegistrant.ensureInitialized();
  await ForegroundService.onServiceStart(service);
}
