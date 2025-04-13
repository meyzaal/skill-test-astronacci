part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.emailChanged(String email) = SignInEmailChanged;
  const factory SignInEvent.passwordChanged(String password) =
      SignInPasswordChanged;
  const factory SignInEvent.showPasswordChanged(bool showPassword) =
      SignInShowPasswordChanged;
  const factory SignInEvent.submitted() = SignInSubmitted;
}
