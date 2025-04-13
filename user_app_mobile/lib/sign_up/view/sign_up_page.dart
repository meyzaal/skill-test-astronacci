import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_app_mobile/sign_up/sign_up.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => SignUpBloc(
          authenticationRepository: context.read<AuthenticationRepository>(),
        ),
        child: const SignUpView(),
      ),
    );
  }
}
