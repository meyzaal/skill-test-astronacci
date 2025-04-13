part of 'sign_in_bloc.dart';

enum SignInFailure {
  invalidEmailOrPassword,
  unknown,
}

extension SignInFailureX on SignInFailure {
  String get description {
    return switch (this) {
      SignInFailure.invalidEmailOrPassword => 'Invalid email or password',
      SignInFailure.unknown => 'Unknown error',
    };
  }
}

@freezed
abstract class SignInState with FormzMixin, _$SignInState {
  const factory SignInState({
    required FormzSubmissionStatus status,
    required Email email,
    required Password password,
    required bool showPassword,
    @Default(SignInFailure.unknown) SignInFailure failure,
  }) = _SignInState;

  const SignInState._();

  @override
  List<FormzInput<dynamic, dynamic>> get inputs => [email, password];
}
