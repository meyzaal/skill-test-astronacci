import 'package:dio/dio.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:token_local_storage/token_local_storage.dart';
import 'package:user_app_api/user_app_api.dart';

typedef JSON = Map<String, dynamic>;

class TokenMissingException implements Exception {}

/// {@template user_app_api}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class UserAppApi {
  /// {@macro user_app_api}
  UserAppApi({
    required TokenLocalStorage tokenStorage,
    Dio? httpClient,
  }) : _httpClient = httpClient ?? Dio() {
    _fresh = Fresh<CachedOAuth2Token>(
      tokenStorage: tokenStorage,
      refreshToken: (token, httpClient) async {
        // not implemented at this time
        throw RevokeTokenException();
      },
      tokenHeader: (token) {
        return {
          'Authorization': 'Bearer ${token.accessToken}',
        };
      },
    );

    _httpClient
      ..options.baseUrl = 'skill-test-astronacci-production.up.railway.app'
      ..interceptors.add(_fresh)
      ..interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
  }

  late Fresh<CachedOAuth2Token> _fresh;

  final Dio _httpClient;

  Stream<AuthenticationStatus> get authenticationStatus =>
      _fresh.authenticationStatus;

  Future<void> register({
    required String name,
    required String email,
    required String password,
  }) async {
    await _httpClient.post<dynamic>(
      '/api/auth/register',
      data: {
        'name': name,
        'email': email,
        'password': password,
      },
    );
  }

  Future<void> login({
    required String email,
    required String password,
  }) async {
    final response = await _httpClient.post<dynamic>(
      '/api/auth/login',
      data: {
        'email': email,
        'password': password,
      },
    );

    final loginResponse = LoginResponse.fromJson(response.data as JSON);

    final token = loginResponse.token;
    if (token == null) throw TokenMissingException();

    await _fresh.setToken(CachedOAuth2Token(accessToken: token));
  }

  Future<void> logout() async {
    await _fresh.setToken(null);
  }

  /// returns the reset token
  Future<String> forgotPassword(String email) async {
    final response = await _httpClient.post<dynamic>(
      '/api/auth/forgot-password',
      data: {'email': email},
    );

    final forgotPasswordResponse =
        ForgotPasswordResponse.fromJson(response.data as JSON);

    final resetToken = forgotPasswordResponse.resetToken;
    if (resetToken == null) throw TokenMissingException();

    return resetToken;
  }

  Future<void> resetPassword({
    required String resetToken,
    required String password,
  }) async {
    await _httpClient.post<dynamic>(
      '/api/auth/reset-password',
      data: {
        'resetToken': resetToken,
        'password': password,
      },
    );
  }
}
