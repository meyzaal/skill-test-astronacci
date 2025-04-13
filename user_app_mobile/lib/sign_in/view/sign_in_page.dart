import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_app_mobile/app/app.dart';
import 'package:user_app_mobile/l10n/l10n.dart';
import 'package:user_app_mobile/sign_in/sign_in.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              const SettingsRoute().push<void>(context);
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return BlocProvider(
            create: (context) => SignInBloc(
              authenticationRepository:
                  context.read<AuthenticationRepository>(),
            ),
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: const IntrinsicHeight(
                  child: SafeArea(
                    child: SignInForm(),
                  ),
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: OverflowBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                const ForgotPasswordRoute().push<void>(context);
                // const ResetPasswordRoute('resetToken').push<void>(context);
              },
              child: Text(context.l10n.signInForgotPasswordButtonText),
            ),
            TextButton(
              onPressed: () {
                const SignUpRoute().push<void>(context);
              },
              child: Text(context.l10n.signInCreateAccountButtonText),
            ),
          ],
        ),
      ),
    );
  }
}
