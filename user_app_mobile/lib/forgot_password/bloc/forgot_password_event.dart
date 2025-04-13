part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.emailChanged(String email) =
      ForgotPasswordEmailChanged;
  const factory ForgotPasswordEvent.submitted() = ForgotPasswordSubmitted;
}
