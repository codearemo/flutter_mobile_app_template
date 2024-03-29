import 'package:flutter/material.dart';
import 'package:flutter_app_setup/core/resolvers/init_dependencies.dart';
import 'package:flutter_app_setup/core/theme/app_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_app_setup/core/router/app_routes.dart';

void main() {
  // Add this line to ensure all dependencies are initialized before app
  WidgetsFlutterBinding.ensureInitialized();

  initDependencies();

  runApp(
    MultiBlocProvider(
      providers: const [],
      child: const AppTemplate(),
    ),
  );
}

class AppTemplate extends StatelessWidget {
  const AppTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'App Setup Template',
      theme: AppTheme.lightTheme,
      routerConfig: appRoutes,
    );
  }
}
