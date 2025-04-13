part of 'forgot_password_bloc.dart';

enum ForgotPasswordFailure {
  unknown,
  userNotFound,
}

@freezed
abstract class ForgotPasswordState with FormzMixin, _$ForgotPasswordState {
  const factory ForgotPasswordState({
    required FormzSubmissionStatus status,
    required Email email,
    @Default('') String resetToken,
    @Default(ForgotPasswordFailure.unknown) ForgotPasswordFailure failure,
  }) = _ForgotPasswordState;

  const ForgotPasswordState._();

  @override
  List<FormzInput<dynamic, dynamic>> get inputs => [email];
}
