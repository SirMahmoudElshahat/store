import 'package:flutter/material.dart';
import 'package:udemy_store/core/common/screens/under_build_screen.dart';
import 'package:udemy_store/core/routes/base_routes.dart';
import 'package:udemy_store/features/auth/presentation/screens/login_screen.dart';

class AppRoutes {
  static const String login = 'login';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case login:
        return BaseRoute(page: const LoginScreen());

      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
