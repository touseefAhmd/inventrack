import 'package:go_router/go_router.dart';

import '../auth/presentation/UI/login_page.dart';


final authRoutes = [
  GoRoute(
    path: '/login',
    name: 'login',
    builder: (context, state) => const LoginPage(),
  ),

];
