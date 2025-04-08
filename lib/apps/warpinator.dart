import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:warpinator/apps/cupertino.dart';
import 'package:warpinator/apps/material.dart';
import 'package:warpinator/enums/ui_platform.dart';

import 'package:warpinator/apps/routers/cupertino.dart' as cupertino;
import 'package:warpinator/apps/routers/material.dart' as material;

class WarpinatorApp extends StatefulWidget {
  const WarpinatorApp({super.key});

  @override
  State<WarpinatorApp> createState() => _WarpinatorAppState();
}

class _WarpinatorAppState extends State<WarpinatorApp> {
  late GoRouter _router;
  late TargetPlatform _currentPlatform;
  late UiPlatform _uiPlatform;

  @override
  void initState() {
    super.initState();
    updatePlatform();
  }

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      if (defaultTargetPlatform != _currentPlatform) {
        print('Platform changed: $_currentPlatform -> $defaultTargetPlatform');
        updatePlatform();
      }
    }

    Future.microtask(() async {
      // Enable Edge-to-Edge on Android 10+
      await SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.edgeToEdge,
      );

      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          systemStatusBarContrastEnforced: false,
          systemNavigationBarColor: Colors.transparent,
          systemNavigationBarContrastEnforced: false,
        ),
      );
    });

    switch (_uiPlatform) {
      case UiPlatform.material:
        return WarpinatorMaterialApp(
          router: _router,
        );
      case UiPlatform.cupertino:
        return WarpinatorCupertinoApp(
          router: _router,
        );
    }
  }

  void updatePlatform() {
    _currentPlatform = defaultTargetPlatform;
    switch (_currentPlatform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.windows:
      case TargetPlatform.linux:
        _uiPlatform = UiPlatform.material;
        _router = GoRouter(
          routes: material.$appRoutes,
        );
        break;
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        _uiPlatform = UiPlatform.cupertino;
        _router = GoRouter(
          routes: cupertino.$appRoutes,
        );
        break;
    }
  }
}
