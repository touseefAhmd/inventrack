import 'package:go_router/go_router.dart';
import 'package:inventrack/features/Dashboard/dashboard_view.dart';

import '../auth/presentation/UI/login_page.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: "/login",
    routes: [

      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) {
       //   final s = state.extra as Map;
          return const LoginPage();
        },
      ),
      GoRoute(
        path: '/dashboard',
        name: 'dashboard',
        builder: (context, state) => const DashboardScreen(),
      ),

    ],
    // redirect: (context, state) {
    //   final bool loggedIn = state.uri.path == AppRoute.home;
    //   if (!loggedIn && state.uri.path != AppRoute.login) {
    //     return AppRoute.login;
    //   }
    //   if (!loggedIn) {
    //     return AppRoute.login;
    //   }
    //   return null;
    // },
  );
}


