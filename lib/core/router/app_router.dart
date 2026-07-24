import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

import 'package:erp_app_v2/features/auth/splash_screen.dart';
import 'package:erp_app_v2/core/update_check/force_update_dialog.dart';

// Import other screens here as you migrate them to GoRouter
// import 'package:erp_app_v2/features/home/home_screen.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

  static GoRouter getRouter(bool updateRequired) {
    return GoRouter(
      navigatorKey: rootNavigatorKey,
      initialLocation: updateRequired ? '/force_update' : '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          path: '/force_update',
          builder: (context, state) => const ForceUpdateScreen(),
        ),
        // Add more routes here to replace Navigator.push in the future
      ],
    );
  }
}
