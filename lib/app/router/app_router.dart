// lib/app/router/app_router.dart
import 'package:go_router/go_router.dart';
import 'package:franchise_master_app/features/auth/presentation/view/login_screen.dart';
import 'package:franchise_master_app/features/dashboard/presentation/view/dashboard_screen.dart'; // We'll create this placeholder next

class AppRouter {
  // Define names for our routes for type-safe navigation
  static const String loginRoute = '/';
  static const String dashboardRoute = '/dashboard';

  static final router = GoRouter(
    initialLocation: loginRoute, // The app will start at the login screen
    routes: [
      GoRoute(
        path: loginRoute,
        name: 'login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: dashboardRoute,
        name: 'dashboard',
        builder: (context, state) => const DashboardScreen(),
      ),
    ],
  );
}