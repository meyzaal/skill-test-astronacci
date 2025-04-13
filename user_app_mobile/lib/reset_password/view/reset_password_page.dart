import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_app_mobile/reset_password/reset_password.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({required this.resetToken, super.key});

  final String resetToken;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => ResetPasswordBloc(
          authenticationRepository: context.read<AuthenticationRepository>(),
        )..add(ResetPasswordEvent.started(resetToken: resetToken)),
        child: const ResetPasswordView(),
      ),
    );
  }
}
