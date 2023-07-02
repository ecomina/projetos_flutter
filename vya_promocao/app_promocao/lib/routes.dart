import 'package:app_promocao/screens/auth/login_screen.dart';
import 'package:app_promocao/screens/promocao/promocao_edicao_sreeen.dart';
import 'package:app_promocao/screens/promocao/promocao_home_screen.dart';
import 'package:app_promocao/screens/promocao/promocao_main_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      // builder: (context, state) => const LoginScreen(),
      pageBuilder: (context, state) => const MaterialPage(
        child: LoginScreen(),
        fullscreenDialog: true,
      ),
    ),
    GoRoute(
      path: '/main',
      // builder: (context, state) => const LoginScreen(),
      pageBuilder: (context, state) => const MaterialPage(
        child: PromocaoMainScreen(),
        fullscreenDialog: true,
      ),
    ),
    GoRoute(
      path: '/home',
      // builder: (context, state) => const LoginScreen(),
      pageBuilder: (context, state) => const MaterialPage(
        child: PromocaoHomeScreen(),
        fullscreenDialog: true,
      ),
    ),
    GoRoute(
      path: '/promocaoEdicao',
      // builder: (context, state) => const LoginScreen(),
      pageBuilder: (context, state) => const MaterialPage(
        child: PromocaoEdicaoScreen(),
        fullscreenDialog: true,
      ),
    ),
    GoRoute(
      path: '/promocaoLista',
      // builder: (context, state) => const LoginScreen(),
      pageBuilder: (context, state) => const MaterialPage(
        child: PromocaoEdicaoScreen(),
        fullscreenDialog: true,
      ),
    ),
  ],
);
