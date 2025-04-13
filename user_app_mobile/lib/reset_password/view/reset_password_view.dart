import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:user_app_mobile/app/app.dart';
import 'package:user_app_mobile/l10n/l10n.dart';
import 'package:user_app_mobile/reset_password/reset_password.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetPasswordBloc, ResetPasswordState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status.isFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(switch (state.failure) {
                  ResetPasswordFailure.invalidToken =>
                    context.l10n.resetPasswordInvalidTokenError,
                  ResetPasswordFailure.unknown =>
                    context.l10n.resetPasswordUnknownError,
                },),
              ),
            );
        }
        if (state.status.isSuccess) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(context.l10n.resetPasswordSuccessMessage)),
            );
          const SignInRoute().go(context);
        }
      },
      child: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(context.l10n.resetPasswordAppBarTitle),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverList.list(
              children: [
                _PasswordInput(),
                const SizedBox(height: 16),
                _ConfirmedPasswordInput(),
                const SizedBox(height: 8),
                _ShowPasswordButton(),
                const SizedBox(height: 24),
                _SubmitButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
      builder: (context, state) {
        return TextFormField(
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.next,
          obscureText: !state.showPassword,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: context.l10n.resetPasswordPasswordLabel,
            helperText: context.l10n.resetPasswordPasswordHelper,
            helperMaxLines: 3,
            errorText: switch (state.password.displayError) {
              null => null,
              PasswordValidationError.empty =>
                context.l10n.resetPasswordPasswordRequiredError,
              PasswordValidationError.invalid =>
                context.l10n.resetPasswordPasswordInvalidError,
            },
          ),
          onChanged: (password) {
            context.read<ResetPasswordBloc>().add(
                  ResetPasswordEvent.passwordChanged(password),
                );
          },
        );
      },
    );
  }
}

class _ConfirmedPasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
      builder: (context, state) {
        return TextFormField(
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.done,
          obscureText: !state.showPassword,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: context.l10n.resetPasswordConfirmedPasswordLabel,
            errorText: switch (state.confirmedPassword.displayError) {
              null => null,
              ConfirmedPasswordValidationError.invalid =>
                context.l10n.resetPasswordConfirmedPasswordInvalidError,
            },
          ),
          onChanged: (confirmedPassword) {
            context.read<ResetPasswordBloc>().add(
                  ResetPasswordEvent.confirmedPasswordChanged(
                      confirmedPassword,),
                );
          },
        );
      },
    );
  }
}

class _ShowPasswordButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
      builder: (context, state) {
        return CheckboxListTile(
          title: Text(context.l10n.resetPasswordShowPasswordLabel),
          contentPadding: EdgeInsets.zero,
          value: state.showPassword,
          onChanged: (showPassword) {
            if (showPassword == null) return;

            context
                .read<ResetPasswordBloc>()
                .add(ResetPasswordEvent.showPasswordChanged(showPassword));
          },
        );
      },
    );
  }
}

class _SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
      builder: (context, state) {
        return FilledButton(
          onPressed: state.status.isInProgress
              ? null
              : () => context
                  .read<ResetPasswordBloc>()
                  .add(const ResetPasswordEvent.submitted()),
          child: Text(context.l10n.resetPasswordSubmitButtonText),
        );
      },
    );
  }
}
