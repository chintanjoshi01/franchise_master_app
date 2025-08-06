// lib/main.dart
import 'package:flutter/material.dart';
import 'package:franchise_master_app/app/injection.dart';
import 'package:franchise_master_app/app/router/app_router.dart'; // Import the router
import 'package:franchise_master_app/app/theme/app_theme.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Use MaterialApp.router to enable GoRouter
    return MaterialApp.router(
      title: 'Franchise Master App',
      debugShowCheckedModeBanner: false,
      theme: createTheme(),
      // Connect our router configuration to the app
      routerConfig: AppRouter.router,
    );
  }
}