import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_app_mobile/sign_in/sign_in.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc({required AuthenticationRepository authenticationRepository})
      : _authenticationRepository = authenticationRepository,
        super(
          const SignInState(
            status: FormzSubmissionStatus.initial,
            email: Email.pure(),
            password: Password.pure(),
            showPassword: true,
          ),
        ) {
    on<SignInEmailChanged>(_onSignInEmailChanged);
    on<SignInPasswordChanged>(_onSignInPasswordChanged);
    on<SignInShowPasswordChanged>(_onSignInShowPasswordChanged);
    on<SignInSubmitted>(_onSignInSubmitted);
  }

  final AuthenticationRepository _authenticationRepository;

  void _onSignInEmailChanged(
    SignInEmailChanged event,
    Emitter<SignInState> emit,
  ) {
    final email = Email.dirty(event.email);
    emit(state.copyWith(email: email));
  }

  void _onSignInPasswordChanged(
    SignInPasswordChanged event,
    Emitter<SignInState> emit,
  ) {
    final password = Password.dirty(event.password);
    emit(state.copyWith(password: password));
  }

  Future<void> _onSignInSubmitted(
    SignInSubmitted event,
    Emitter<SignInState> emit,
  ) async {
    if (state.isNotValid) return;
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));

    try {
      await _authenticationRepository.signIn(
        email: state.email.value,
        password: state.password.value,
      );
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } catch (e) {
      if (e is SignInInvalidCredentialsException) {
        emit(
          state.copyWith(
            status: FormzSubmissionStatus.failure,
            failure: SignInFailure.invalidEmailOrPassword,
          ),
        );
      } else {
        emit(
          state.copyWith(
            status: FormzSubmissionStatus.failure,
            failure: SignInFailure.unknown,
          ),
        );
      }
    }
  }

  void _onSignInShowPasswordChanged(
    SignInShowPasswordChanged event,
    Emitter<SignInState> emit,
  ) {
    emit(state.copyWith(showPassword: event.showPassword));
  }
}
