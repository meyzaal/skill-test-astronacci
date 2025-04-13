import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_app_mobile/forgot_password/forgot_password.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';
part 'forgot_password_bloc.freezed.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc({
    required AuthenticationRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(
          const ForgotPasswordState(
            status: FormzSubmissionStatus.initial,
            email: Email.pure(),
          ),
        ) {
    on<ForgotPasswordEmailChanged>(_onForgotPasswordEmailChanged);
    on<ForgotPasswordSubmitted>(_onForgotPasswordSubmitted);
  }

  final AuthenticationRepository _authenticationRepository;

  void _onForgotPasswordEmailChanged(
    ForgotPasswordEmailChanged event,
    Emitter<ForgotPasswordState> emit,
  ) {
    final email = Email.dirty(event.email);
    emit(state.copyWith(email: email));
  }

  Future<void> _onForgotPasswordSubmitted(
    ForgotPasswordSubmitted event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    if (state.isNotValid) return;
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));

    try {
      final resetToken = await _authenticationRepository.forgotPassword(
        email: state.email.value,
      );

      emit(
        state.copyWith(
          status: FormzSubmissionStatus.success,
          resetToken: resetToken,
        ),
      );
    } catch (e) {
      if (e is ForgotPasswordUserNotFoundException) {
        emit(
          state.copyWith(
            status: FormzSubmissionStatus.failure,
            failure: ForgotPasswordFailure.userNotFound,
          ),
        );
      } else {
        emit(
          state.copyWith(
            status: FormzSubmissionStatus.failure,
            failure: ForgotPasswordFailure.unknown,
          ),
        );
      }
    }
  }
}
