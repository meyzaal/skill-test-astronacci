part of 'authentication_bloc.dart';

@freezed
sealed class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = AuthenticationInitial;
  const factory AuthenticationState.authenticated() =
      AuthenticationAuthenticated;
  const factory AuthenticationState.unauthenticated() =
      AuthenticationUnauthenticated;

  factory AuthenticationState.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationStateFromJson(json);
}

extension AuthenticationStateX on AuthenticationState {
  bool get isAuthenticated => this is AuthenticationAuthenticated;
  bool get isUnauthenticated => this is AuthenticationUnauthenticated;
  bool get isInitial => this is AuthenticationInitial;
}
