import 'package:app_promocao/screens/auth/login_screen.dart';
import 'package:app_promocao/screens/promocao/promocao_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      // builder: (context, state) => const LoginScreen(),
      pageBuilder: (context, state) => MaterialPage(
        child: LoginScreen(),
        fullscreenDialog: true,
      ),
    ),
    GoRoute(
      path: '/promocao',
      // builder: (context, state) => const LoginScreen(),
      pageBuilder: (context, state) => const MaterialPage(
        child: PromocaoHomeScreen(),
        fullscreenDialog: true,
      ),
    ),
  ],
);
