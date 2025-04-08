import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:warpinator/apps/warpinator.dart';
import 'package:warpinator/utils/notifications.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Note: Notifications will now work if debugDefaultTargetPlatformOverride is
  // set to another platform than the real current one
  await NotificationUtils.initializeNotifications();

  if (kDebugMode) {
    // Current development UI target platform
    // Change accordingly to the work you are doing
    debugDefaultTargetPlatformOverride = TargetPlatform.android;
  }

  runApp(const WarpinatorApp());
}
