import 'package:fresh_dio/fresh_dio.dart';
import 'package:hive_ce/hive.dart';

part 'cached_oauth2_token.g.dart';

@HiveType(typeId: 0)
class CachedOAuth2Token implements OAuth2Token {
  const CachedOAuth2Token({
    required this.accessToken,
    this.tokenType = 'bearer',
    this.expiresIn,
    this.refreshToken,
    this.scope,
  });
  @HiveField(0)
  @override
  final String accessToken;

  @HiveField(1)
  @override
  final String? tokenType;

  @HiveField(2)
  @override
  final int? expiresIn;

  @HiveField(3)
  @override
  final String? refreshToken;

  @HiveField(4)
  @override
  final String? scope;

  CachedOAuth2Token copyWith({
    String? accessToken,
    String? tokenType,
    int? expiresIn,
    String? refreshToken,
    String? scope,
  }) {
    return CachedOAuth2Token(
      accessToken: accessToken ?? this.accessToken,
      tokenType: tokenType ?? this.tokenType,
      expiresIn: expiresIn ?? this.expiresIn,
      refreshToken: refreshToken ?? this.refreshToken,
      scope: scope ?? this.scope,
    );
  }
}
