import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:warpinator/screens/cupertino/home.dart';
import 'package:warpinator/screens/cupertino/settings.dart';

// dart run build_runner build

part 'cupertino.g.dart';

@TypedGoRoute<HomeRoute>(path: '/', name: 'Home', routes: [
])
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreenCupertino();
  }
}
