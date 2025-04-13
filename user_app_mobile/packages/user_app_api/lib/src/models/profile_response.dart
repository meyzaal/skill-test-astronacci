import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_response.freezed.dart';
part 'profile_response.g.dart';

@freezed
abstract class ProfileResponse with _$ProfileResponse {
  const factory ProfileResponse({
    User? user,
  }) = _ProfileResponse;

  factory ProfileResponse.fromJson(Map<String, Object?> json) =>
      _$ProfileResponseFromJson(json);
}

@freezed
abstract class User with _$User {
  const factory User({
    String? id,
    String? name,
    String? email,
    String? avatar,
    String? bio,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
