import 'package:user_app_api/user_app_api.dart';

class SignInInvalidCredentialsException implements Exception {}

class SignUpEmailAlreadyExistsException implements Exception {}

class ForgotPasswordUserNotFoundException implements Exception {}

class ResetPasswordInvalidTokenException implements Exception {}

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
    try {
      await _userAppApi.login(email: email, password: password);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.badResponse) {
        final json = e.response?.data as Map<String, dynamic>?;
        final message = json?['message'] as String?;

        if (message == 'Invalid email or password') {
          throw SignInInvalidCredentialsException();
        }
      }
    }
  }

  Future<void> signOut() async {
    await _userAppApi.logout();
  }

  Future<void> signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      await _userAppApi.register(
        email: email,
        password: password,
        name: name,
      );
    } on DioException catch (e) {
      if (e.type == DioExceptionType.badResponse) {
        final json = e.response?.data as Map<String, dynamic>?;
        final message = json?['message'] as String?;

        if (message == 'Email already in use') {
          throw SignUpEmailAlreadyExistsException();
        }
      }
    }
  }

  Future<String> forgotPassword({
    required String email,
  }) async {
    try {
      return await _userAppApi.forgotPassword(email);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.badResponse) {
        final json = e.response?.data as Map<String, dynamic>?;
        final message = json?['message'] as String?;

        if (message == 'User not found') {
          throw ForgotPasswordUserNotFoundException();
        }
      }
      rethrow;
    }
  }

  Future<void> resetPassword({
    required String password,
    required String resetToken,
  }) async {
    try {
      await _userAppApi.resetPassword(
        password: password,
        resetToken: resetToken,
      );
    } on DioException catch (e) {
      if (e.type == DioExceptionType.badResponse) {
        final json = e.response?.data as Map<String, dynamic>?;
        final message = json?['message'] as String?;

        if (message == 'Invalid or expired reset token') {
          throw ResetPasswordInvalidTokenException();
        }
      }
    }
  }
}
