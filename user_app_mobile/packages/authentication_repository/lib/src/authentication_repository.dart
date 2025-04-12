import 'package:user_app_api/user_app_api.dart';

enum AuthenticationStatus {
  unknown,
  signedIn,
  signedOut,
}

/// {@template authentication_repository}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class AuthenticationRepository {
  /// {@macro authentication_repository}
  AuthenticationRepository({
    required UserAppApi userAppApi,
  }) : _userAppApi = userAppApi;

  final UserAppApi _userAppApi;

  Stream<AuthenticationStatus> get status {
    return _userAppApi.authenticationStatus.map((status) {
      if (status.isAuthenticated) return AuthenticationStatus.signedIn;
      if (status.isUnauthenticated) return AuthenticationStatus.signedOut;
      return AuthenticationStatus.unknown;
    });
  }

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    await _userAppApi.login(
      email: email,
      password: password,
    );
  }

  Future<void> signOut() async {
    await _userAppApi.logout();
  }

  Future<void> signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    await _userAppApi.register(
      email: email,
      password: password,
      name: name,
    );
  }
}
