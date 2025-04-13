part of 'reset_password_bloc.dart';

enum ResetPasswordFailure {
  unknown,
  invalidToken,
}

@freezed
abstract class ResetPasswordState with FormzMixin, _$ResetPasswordState {
  const factory ResetPasswordState({
    required Password password,
    required ConfirmedPassword confirmedPassword,
    required FormzSubmissionStatus status,
    required bool showPassword,
    @Default('') String resetToken,
    @Default(ResetPasswordFailure.unknown) ResetPasswordFailure failure,
  }) = _ResetPasswordState;

  const ResetPasswordState._();

  @override
  List<FormzInput<dynamic, dynamic>> get inputs =>
      [password, confirmedPassword];
}
