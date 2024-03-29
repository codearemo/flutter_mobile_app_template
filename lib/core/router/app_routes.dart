import 'package:flutter/material.dart';
import 'package:flutter_app_setup/core/router/app_routes_name.dart';
import 'package:go_router/go_router.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
GlobalKey<ScaffoldState> navScaffoldKey = GlobalKey<ScaffoldState>(); // What does this do?

final GoRouter appRoutes = GoRouter(
  navigatorKey: navigatorKey, // Can use this key to navigate without context
  initialLocation: AppRoutesNames.initialScreen,
  routes: [
    GoRoute(
      path: AppRoutesNames.initialScreen,
      builder: (context, state) => const Scaffold(
        body: Center(
          child: Text('Hello World!'),
        )
      ),
    )
  ],
);
