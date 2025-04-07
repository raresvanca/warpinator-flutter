import 'package:dynamic_system_colors/dynamic_system_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WarpinatorMaterialApp extends StatelessWidget {
  const WarpinatorMaterialApp({super.key, required this.router});

  final GoRouter router;

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        ColorScheme? lightColorScheme, darkColorScheme;

        // Building the color scheme from the dynamic color or from the branding
        // colors
        if (lightDynamic != null && darkDynamic != null) {
          // Rebuild the color scheme from the dynamic color as a workaround for
          // unmaintained dynamic color package

          // See https://github.com/material-foundation/flutter-packages/pull/599
          lightColorScheme = lightDynamic.harmonized();
          darkColorScheme = darkDynamic.harmonized();
        } else {
          lightColorScheme = ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
          );
          darkColorScheme = ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            brightness: Brightness.dark,
          );
        }

        return materialAppBuilder(
          lightColorScheme,
          darkColorScheme,
        );
      },
    );
  }

  Widget materialAppBuilder(
    ColorScheme lightColorScheme,
    ColorScheme darkColorScheme,
  ) {
    // Set the predictive back transitions for Android.
    // Note: The transition does not look native
    const pageTransitionsTheme = PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        // Set the predictive back transitions for Android.
        TargetPlatform.android: PredictiveBackPageTransitionsBuilder(),
      },
    );

    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      title: 'Warpinator',
      // Add localization
      themeMode: ThemeMode.system,
      theme: ThemeData(
        colorScheme: lightColorScheme,
        brightness: lightColorScheme.brightness,
        useMaterial3: true,
        pageTransitionsTheme: pageTransitionsTheme,
      ),
      darkTheme: ThemeData(
        colorScheme: darkColorScheme,
        brightness: darkColorScheme.brightness,
        useMaterial3: true,
        pageTransitionsTheme: pageTransitionsTheme,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
