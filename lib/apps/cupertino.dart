import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class WarpinatorCupertinoApp extends StatelessWidget {
  const WarpinatorCupertinoApp({super.key, required this.router});

  final GoRouter router;

  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      title: 'Warpinator',
      // Add localization
      debugShowCheckedModeBanner: false,
    );
  }
}
