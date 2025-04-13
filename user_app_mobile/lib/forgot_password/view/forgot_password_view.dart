import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:user_app_mobile/app/app.dart';
import 'package:user_app_mobile/forgot_password/forgot_password.dart';
import 'package:user_app_mobile/l10n/l10n.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status.isFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(
                  switch (state.failure) {
                    ForgotPasswordFailure.unknown =>
                      context.l10n.forgotPasswordUnknownError,
                    ForgotPasswordFailure.userNotFound =>
                      context.l10n.forgotPasswordUserNotFoundError,
                  },
                ),
              ),
            );
        }

        if (state.status.isSuccess) {
          ResetPasswordRoute(state.resetToken).push<void>(context);
        }
      },
      child: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(context.l10n.forgotPasswordAppBarTitle),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverList.list(
              children: [
                _EmailInput(),
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

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
      builder: (context, state) {
        return TextFormField(
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: context.l10n.forgotPasswordEmailLabel,
            errorText: switch (state.email.displayError) {
              null => null,
              EmailValidationError.empty =>
                context.l10n.forgotPasswordEmailRequiredError,
              EmailValidationError.invalid =>
                context.l10n.forgotPasswordEmailInvalidError,
            },
          ),
          onChanged: (email) => context
              .read<ForgotPasswordBloc>()
              .add(ForgotPasswordEmailChanged(email)),
        );
      },
    );
  }
}

class _SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
      builder: (context, state) {
        return FilledButton(
          onPressed: state.isValid
              ? () {
                  if (state.status.isInProgress) return;

                  context
                      .read<ForgotPasswordBloc>()
                      .add(const ForgotPasswordSubmitted());
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
              : Text(context.l10n.forgotPasswordSubmitButtonText),
        );
      },
    );
  }
}
