import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_detail_response.freezed.dart';
part 'user_detail_response.g.dart';

@freezed
abstract class UserDetailResponse with _$UserDetailResponse {
  const factory UserDetailResponse({
    User? user,
  }) = _UserDetailResponse;

  factory UserDetailResponse.fromJson(Map<String, Object?> json) =>
      _$UserDetailResponseFromJson(json);
}

@freezed
abstract class User with _$User {
  const factory User({
    String? id,
    String? name,
    String? email,
    String? avatar,
    String? bio,
    bool? isMe,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
