import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_app_mobile/reset_password/reset_password.dart';

part 'reset_password_event.dart';
part 'reset_password_state.dart';
part 'reset_password_bloc.freezed.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordBloc({
    required AuthenticationRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(
          const ResetPasswordState(
            password: Password.pure(),
            confirmedPassword: ConfirmedPassword.pure(),
            status: FormzSubmissionStatus.initial,
            showPassword: false,
          ),
        ) {
    on<ResetPasswordStarted>(_onResetPasswordStarted);
    on<ResetPasswordPasswordChanged>(_onResetPasswordPasswordChanged);
    on<ResetPasswordConfirmedPasswordChanged>(
      _onResetPasswordConfirmedPasswordChanged,
    );
    on<ResetPasswordShowPasswordChanged>(_onResetPasswordShowPasswordChanged);
    on<ResetPasswordSubmitted>(_onResetPasswordSubmitted);
  }

  final AuthenticationRepository _authenticationRepository;

  void _onResetPasswordStarted(
    ResetPasswordStarted event,
    Emitter<ResetPasswordState> emit,
  ) {
    emit(state.copyWith(resetToken: event.resetToken));
  }

  void _onResetPasswordPasswordChanged(
    ResetPasswordPasswordChanged event,
    Emitter<ResetPasswordState> emit,
  ) {
    final password = Password.dirty(event.password);
    final confirmedPassword = state.confirmedPassword.isPure
        ? state.confirmedPassword
        : ConfirmedPassword.dirty(
            password: password.value,
            value: state.confirmedPassword.value,
          );
    emit(
      state.copyWith(
        password: password,
        confirmedPassword: confirmedPassword,
      ),
    );
  }

  void _onResetPasswordConfirmedPasswordChanged(
    ResetPasswordConfirmedPasswordChanged event,
    Emitter<ResetPasswordState> emit,
  ) {
    final confirmedPassword = ConfirmedPassword.dirty(
      password: state.password.value,
      value: event.confirmedPassword,
    );
    emit(state.copyWith(confirmedPassword: confirmedPassword));
  }

  void _onResetPasswordShowPasswordChanged(
    ResetPasswordShowPasswordChanged event,
    Emitter<ResetPasswordState> emit,
  ) {
    emit(state.copyWith(showPassword: event.showPassword));
  }

  Future<void> _onResetPasswordSubmitted(
    ResetPasswordSubmitted event,
    Emitter<ResetPasswordState> emit,
  ) async {
    if (state.status.isInProgress) return;

    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));

    try {
      await _authenticationRepository.resetPassword(
        password: state.password.value,
        resetToken: state.resetToken,
      );
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } catch (e) {
      if (e is ResetPasswordInvalidTokenException) {
        emit(
          state.copyWith(
            status: FormzSubmissionStatus.failure,
            failure: ResetPasswordFailure.invalidToken,
          ),
        );
      } else {
        emit(
          state.copyWith(
            status: FormzSubmissionStatus.failure,
            failure: ResetPasswordFailure.unknown,
          ),
        );
      }
    }
  }
}
