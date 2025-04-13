import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_list_response.freezed.dart';
part 'user_list_response.g.dart';

@freezed
abstract class UserListResponse with _$UserListResponse {
  const factory UserListResponse({
    List<Users>? users,
    Pagination? pagination,
  }) = _UserListResponse;

  factory UserListResponse.fromJson(Map<String, Object?> json) =>
      _$UserListResponseFromJson(json);
}

@freezed
abstract class Users with _$Users {
  const factory Users({
    String? id,
    String? name,
    String? email,
    String? avatar,
    String? bio,
    bool? isMe,
  }) = _Users;

  factory Users.fromJson(Map<String, Object?> json) => _$UsersFromJson(json);
}

@freezed
abstract class Pagination with _$Pagination {
  const factory Pagination({
    int? total,
    int? page,
    int? limit,
    int? totalPages,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, Object?> json) =>
      _$PaginationFromJson(json);
}
