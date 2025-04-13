part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.nameChanged(String name) = SignUpNameChanged;
  const factory SignUpEvent.emailChanged(String email) = SignUpEmailChanged;
  const factory SignUpEvent.passwordChanged(String password) =
      SignUpPasswordChanged;
  const factory SignUpEvent.confirmedPasswordChanged(String confirmedPassword) =
      SignUpConfirmedPasswordChanged;
  // ignore: avoid_positional_boolean_parameters
  const factory SignUpEvent.showPasswordChanged(bool showPassword) =
      SignUpShowPasswordChanged;
  const factory SignUpEvent.submitted() = SignUpSubmitted;
}
