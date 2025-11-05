import 'package:flutter/material.dart';
import '../cubit/auth_cubit.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => context.read<AuthCubit>(),
        child: const LoginForm(),
      ),
    );
  }
}