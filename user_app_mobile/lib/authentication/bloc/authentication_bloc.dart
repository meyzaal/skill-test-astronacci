import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';
part 'authentication_bloc.g.dart';

class AuthenticationBloc
    extends HydratedBloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    required AuthenticationRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(const AuthenticationInitial()) {
    _authenticationStatusSubscription = _authenticationRepository.status
        .listen((status) => add(AuthenticationEvent.statusChanged(status)));

    on<AuthenticationStatusChanged>(_onAuthenticationStatusChanged);
    on<AuthenticationSignedOut>(_onAuthenticationSignedOut);
  }

  late StreamSubscription<AuthenticationStatus>
      _authenticationStatusSubscription;
  final AuthenticationRepository _authenticationRepository;

  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    return super.close();
  }

  void _onAuthenticationStatusChanged(
    AuthenticationStatusChanged event,
    Emitter<AuthenticationState> emit,
  ) {
    switch (event.status) {
      case AuthenticationStatus.signedIn:
        emit(const AuthenticationAuthenticated());
      case AuthenticationStatus.signedOut:
        emit(const AuthenticationUnauthenticated());
      case AuthenticationStatus.unknown:
        emit(const AuthenticationInitial());
    }
  }

  Future<void> _onAuthenticationSignedOut(
    AuthenticationSignedOut event,
    Emitter<AuthenticationState> emit,
  ) async {
    await _authenticationRepository.signOut();
  }

  @override
  AuthenticationState? fromJson(Map<String, dynamic> json) {
    return AuthenticationState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(AuthenticationState state) {
    return state.toJson();
  }
}
