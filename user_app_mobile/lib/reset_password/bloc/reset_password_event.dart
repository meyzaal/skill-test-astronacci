part of 'reset_password_bloc.dart';

@freezed
abstract class ResetPasswordEvent with _$ResetPasswordEvent {
  const factory ResetPasswordEvent.started({required String resetToken}) =
      ResetPasswordStarted;
  const factory ResetPasswordEvent.passwordChanged(String password) =
      ResetPasswordPasswordChanged;
  const factory ResetPasswordEvent.confirmedPasswordChanged(
      String confirmedPassword,) = ResetPasswordConfirmedPasswordChanged;
  // ignore: avoid_positional_boolean_parameters
  const factory ResetPasswordEvent.showPasswordChanged(bool showPassword) =
      ResetPasswordShowPasswordChanged;
  const factory ResetPasswordEvent.submitted() = ResetPasswordSubmitted;
}
