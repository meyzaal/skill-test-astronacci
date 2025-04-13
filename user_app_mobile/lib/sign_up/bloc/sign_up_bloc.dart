import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_app_mobile/sign_up/sign_up.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc({required AuthenticationRepository authenticationRepository})
      : _authenticationRepository = authenticationRepository,
        super(
          const SignUpState(
            status: FormzSubmissionStatus.initial,
            name: Name.pure(),
            email: Email.pure(),
            password: Password.pure(),
            confirmedPassword: ConfirmedPassword.pure(),
            showPassword: false,
          ),
        ) {
    on<SignUpNameChanged>(_onSignUpNameChanged);
    on<SignUpEmailChanged>(_onSignUpEmailChanged);
    on<SignUpPasswordChanged>(_onSignUpPasswordChanged);
    on<SignUpConfirmedPasswordChanged>(_onSignUpConfirmedPasswordChanged);
    on<SignUpShowPasswordChanged>(_onSignUpShowPasswordChanged);
    on<SignUpSubmitted>(_onSignUpSubmitted);
  }

  final AuthenticationRepository _authenticationRepository;

  void _onSignUpNameChanged(
    SignUpNameChanged event,
    Emitter<SignUpState> emit,
  ) {
    final name = Name.dirty(event.name);
    emit(state.copyWith(name: name));
  }

  void _onSignUpEmailChanged(
    SignUpEmailChanged event,
    Emitter<SignUpState> emit,
  ) {
    final email = Email.dirty(event.email);
    emit(state.copyWith(email: email));
  }

  void _onSignUpPasswordChanged(
    SignUpPasswordChanged event,
    Emitter<SignUpState> emit,
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

  void _onSignUpConfirmedPasswordChanged(
    SignUpConfirmedPasswordChanged event,
    Emitter<SignUpState> emit,
  ) {
    final confirmedPassword = ConfirmedPassword.dirty(
      password: state.password.value,
      value: event.confirmedPassword,
    );
    emit(state.copyWith(confirmedPassword: confirmedPassword));
  }

  void _onSignUpShowPasswordChanged(
    SignUpShowPasswordChanged event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(showPassword: event.showPassword));
  }

  Future<void> _onSignUpSubmitted(
    SignUpSubmitted event,
    Emitter<SignUpState> emit,
  ) async {
    if (state.isNotValid) return;
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));

    try {
      await _authenticationRepository.signUp(
        name: state.name.value,
        email: state.email.value,
        password: state.password.value,
      );
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } catch (e) {
      if (e is SignUpEmailAlreadyExistsException) {
        emit(state.copyWith(failure: SignUpFailure.emailAlreadyInUse));
      } else {
        emit(state.copyWith(failure: SignUpFailure.unknown));
      }
    }
  }
}
