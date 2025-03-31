import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:warpinator/screens/common/licenses_screen.dart';
import 'package:warpinator/screens/material/about.dart';
import 'package:warpinator/screens/material/home.dart';
import 'package:warpinator/screens/material/settings.dart';

// dart run build_runner build

part 'material.g.dart';

@TypedGoRoute<HomeRoute>(
  path: '/',
  name: 'Home',
  routes: [
    TypedGoRoute<SettingsRoute>(path: 'settings', name: 'Settings'),
    TypedGoRoute<AboutRoute>(
      path: 'about',
      name: 'About',
      routes: [
        TypedGoRoute<LicensesRoute>(path: 'licenses', name: 'Licenses'),
      ],
    ),
  ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreenMaterial();
  }
}

class SettingsRoute extends GoRouteData {
  const SettingsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SettingsScreenMaterial();
  }
}

class AboutRoute extends GoRouteData {
  const AboutRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AboutScreenMaterial();
  }
}

class LicensesRoute extends GoRouteData {
  const LicensesRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LicensesScreen();
  }
}
