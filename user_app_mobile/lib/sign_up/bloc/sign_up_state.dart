part of 'sign_up_bloc.dart';

enum SignUpFailure {
  emailAlreadyInUse,
  unknown,
}

@freezed
abstract class SignUpState with FormzMixin, _$SignUpState {
  const factory SignUpState({
    required FormzSubmissionStatus status,
    required Name name,
    required Email email,
    required Password password,
    required ConfirmedPassword confirmedPassword,
    required bool showPassword,
    @Default(SignUpFailure.unknown) SignUpFailure failure,
  }) = _SignUpState;

  const SignUpState._();

  @override
  List<FormzInput<dynamic, dynamic>> get inputs =>
      [email, password, confirmedPassword];
}
