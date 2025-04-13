import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:user_app_mobile/l10n/l10n.dart';
import 'package:user_app_mobile/sign_in/sign_in.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocListener<SignInBloc, SignInState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status.isFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(switch (state.failure) {
                  SignInFailure.invalidEmailOrPassword =>
                    context.l10n.signInInvalidCredentialsError,
                  SignInFailure.unknown => context.l10n.signInUnknownError,
                },),
              ),
            );
        }
        if (state.status.isSuccess) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(context.l10n.signInSuccessMessage),
              ),
            );
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'User App',
              style: theme.textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Text(
              '🧑',
              style: theme.textTheme.displayLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 64),
            _EmailInput(),
            const SizedBox(height: 16),
            _PasswordInput(),
            const SizedBox(height: 8),
            _ShowPasswordCheckbox(),
            const SizedBox(height: 24),
            _SubmitButton(),
          ],
        ),
      ),
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextField(
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: context.l10n.signInEmailLabel,
            errorText: switch (state.email.displayError) {
              null => null,
              EmailValidationError.empty =>
                context.l10n.signInEmailRequiredError,
              EmailValidationError.invalid =>
                context.l10n.signInEmailInvalidError,
            },
          ),
          onChanged: (email) =>
              context.read<SignInBloc>().add(SignInEmailChanged(email)),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      buildWhen: (previous, current) =>
          previous.password != current.password ||
          previous.showPassword != current.showPassword,
      builder: (context, state) {
        return TextField(
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.done,
          obscureText: state.showPassword,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: context.l10n.signInPasswordLabel,
            errorText: switch (state.password.displayError) {
              null => null,
              PasswordValidationError.empty =>
                context.l10n.signInPasswordRequiredError,
            },
          ),
          onChanged: (password) =>
              context.read<SignInBloc>().add(SignInPasswordChanged(password)),
        );
      },
    );
  }
}

class _ShowPasswordCheckbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        return CheckboxListTile(
          title: Text(context.l10n.signInShowPasswordLabel),
          contentPadding: EdgeInsets.zero,
          value: !state.showPassword,
          onChanged: (showPassword) {
            if (showPassword == null) return;
            context
                .read<SignInBloc>()
                .add(SignInShowPasswordChanged(!showPassword));
          },
        );
      },
    );
  }
}

class _SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        return FilledButton(
          onPressed: state.isValid
              ? () {
                  if (state.status.isInProgress) return;

                  context.read<SignInBloc>().add(const SignInSubmitted());
                }
              : null,
          child: state.status.isInProgress
              ? SizedBox.square(
                  dimension: 20,
                  child: CircularProgressIndicator.adaptive(
                    valueColor: AlwaysStoppedAnimation(
                      theme.colorScheme.onPrimary,
                    ),
                  ),
                )
              : Text(context.l10n.signInSubmitButtonText),
        );
      },
    );
  }
}
