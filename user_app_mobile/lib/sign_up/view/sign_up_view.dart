import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:user_app_mobile/l10n/l10n.dart';
import 'package:user_app_mobile/sign_up/sign_up.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpBloc, SignUpState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status.isSuccess) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(context.l10n.signUpSuccessMessage),
              ),
            );
          context.pop();
        }
        if (state.status.isFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(
                  switch (state.failure) {
                    SignUpFailure.emailAlreadyInUse =>
                      context.l10n.signUpEmailAlreadyInUseError,
                    SignUpFailure.unknown => context.l10n.signUpUnknownError,
                  },
                ),
              ),
            );
        }
      },
      child: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(context.l10n.signUpAppBarTitle),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                _NameInput(),
                const SizedBox(height: 16),
                _EmailInput(),
                const SizedBox(height: 16),
                _PasswordInput(),
                const SizedBox(height: 16),
                _ConfirmedPasswordInput(),
                const SizedBox(height: 8),
                _ShowPasswordButton(),
                const SizedBox(height: 24),
                _SubmitButton(),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

class _NameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return TextFormField(
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: context.l10n.signUpNameLabel,
            errorText: switch (state.name.displayError) {
              null => null,
              NameValidationError.empty => context.l10n.signUpNameRequiredError,
              NameValidationError.invalid =>
                context.l10n.signUpNameInvalidError,
            },
          ),
          onChanged: (name) =>
              context.read<SignUpBloc>().add(SignUpNameChanged(name)),
        );
      },
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return TextFormField(
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: context.l10n.signUpEmailLabel,
            errorText: switch (state.email.displayError) {
              null => null,
              EmailValidationError.empty =>
                context.l10n.signUpEmailRequiredError,
              EmailValidationError.invalid =>
                context.l10n.signUpEmailInvalidError,
            },
          ),
          onChanged: (email) =>
              context.read<SignUpBloc>().add(SignUpEmailChanged(email)),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return TextFormField(
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.next,
          obscureText: !state.showPassword,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: context.l10n.signUpPasswordLabel,
            helperText: context.l10n.signUpPasswordHelper,
            helperMaxLines: 3,
            errorText: switch (state.password.displayError) {
              null => null,
              PasswordValidationError.empty =>
                context.l10n.signUpPasswordRequiredError,
              PasswordValidationError.invalid =>
                context.l10n.signUpPasswordInvalidError,
            },
          ),
          onChanged: (password) =>
              context.read<SignUpBloc>().add(SignUpPasswordChanged(password)),
        );
      },
    );
  }
}

class _ConfirmedPasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return TextFormField(
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.done,
          obscureText: !state.showPassword,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: context.l10n.signUpConfirmedPasswordLabel,
            errorText: switch (state.confirmedPassword.displayError) {
              null => null,
              ConfirmedPasswordValidationError.invalid =>
                context.l10n.signUpConfirmedPasswordInvalidError,
            },
          ),
          onChanged: (confirmedPassword) => context
              .read<SignUpBloc>()
              .add(SignUpConfirmedPasswordChanged(confirmedPassword)),
        );
      },
    );
  }
}

class _ShowPasswordButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return CheckboxListTile(
          title: Text(context.l10n.signUpShowPasswordLabel),
          contentPadding: EdgeInsets.zero,
          value: state.showPassword,
          onChanged: (showPassword) {
            if (showPassword == null) return;
            context
                .read<SignUpBloc>()
                .add(SignUpShowPasswordChanged(showPassword));
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
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return FilledButton(
          onPressed: state.isValid
              ? () {
                  if (state.status.isInProgress) return;

                  context.read<SignUpBloc>().add(const SignUpSubmitted());
                }
              : null,
          child: state.status.isInProgress
              ? SizedBox.square(
                  dimension: 20,
                  child: CircularProgressIndicator.adaptive(
                    valueColor:
                        AlwaysStoppedAnimation(theme.colorScheme.onPrimary),
                  ),
                )
              : Text(context.l10n.signUpSubmitButtonText),
        );
      },
    );
  }
}
