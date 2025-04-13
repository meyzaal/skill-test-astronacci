import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_app_mobile/forgot_password/forgot_password.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => ForgotPasswordBloc(
          authenticationRepository: context.read<AuthenticationRepository>(),
        ),
        child: const ForgotPasswordView(),
      ),
    );
  }
}
