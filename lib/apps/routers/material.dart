import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// dart run build_runner build

part 'material.g.dart';

@TypedGoRoute<HomeRoute>(path: '/', name: 'Home')
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Placeholder();
  }
}
