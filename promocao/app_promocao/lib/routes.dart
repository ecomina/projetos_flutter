import 'package:app_promocao/screens/auth/login.screen.dart';
import 'package:app_promocao/screens/promocao/promocao_home_page.dart';
import 'package:app_promocao/screens/promocao/promocao_lista_page.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const PromocaoHomePage(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/promocoes',
      builder: (context, state) => const PromocaoListaPage(),
      // pageBuilder: (context, state) => const MaterialPage(
      //   child: PromocaoListaPage(),
      //   fullscreenDialog: true,
      // ),
    ),
  ],
);
