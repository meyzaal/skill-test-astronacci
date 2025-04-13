import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart';
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
      ..options.baseUrl =
          'https://skill-test-astronacci-production.up.railway.app'
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

  Future<ProfileResponse> getProfile() async {
    final response = await _httpClient.get<dynamic>('/api/users/me');
    return ProfileResponse.fromJson(response.data as JSON);
  }

  Future<UserListResponse> getUserList({
    int? page,
    int? limit,
    String? search,
  }) async {
    final response = await _httpClient.get<dynamic>(
      '/api/users',
      queryParameters: {
        if (page != null) 'page': page,
        if (limit != null) 'limit': limit,
        if (search != null) 'search': search,
      },
    );
    return UserListResponse.fromJson(response.data as JSON);
  }

  Future<UserDetailResponse> getUserDetail(String userId) async {
    final response = await _httpClient.get<dynamic>('/api/users/$userId');
    return UserDetailResponse.fromJson(response.data as JSON);
  }

  Future<void> updateProfile({
    String? name,
    String? bio,
  }) async {
    if (name == null && bio == null) return;
    await _httpClient.put<dynamic>(
      '/api/users/me',
      data: {
        if (name != null) 'name': name,
        if (bio != null) 'bio': bio,
      },
    );
  }

  Future<void> updateAvatar(File? file) async {
    Object data;

    if (file == null) {
      data = {'avatar': null};
    } else {
      final avatar = await MultipartFile.fromFile(
        file.path,
        filename: basename(file.path),
        contentType: file.mediaType,
      );
      data = FormData.fromMap({'avatar': avatar});
    }
    await _httpClient.put<dynamic>(
      '/api/users/me/avatar',
      data: data,
    );
  }
}

extension AuthenticationStatusX on AuthenticationStatus {
  bool get isInitial => this == AuthenticationStatus.initial;
  bool get isAuthenticated => this == AuthenticationStatus.authenticated;
  bool get isUnauthenticated => this == AuthenticationStatus.unauthenticated;
}

extension on File {
  MediaType get mediaType {
    final mimeType = lookupMimeType(path) ?? 'application/octet-stream';
    final parts = mimeType.split('/');
    return MediaType(parts[0], parts[1]);
  }
}
