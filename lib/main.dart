import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:warpinator/apps/warpinator.dart';

void main() {
 if (kDebugMode) {
    // Current development UI target platform 
    // Change accordingly to the work you are doing
    debugDefaultTargetPlatformOverride = TargetPlatform.android;
  }
  runApp(const WarpinatorApp());
}
