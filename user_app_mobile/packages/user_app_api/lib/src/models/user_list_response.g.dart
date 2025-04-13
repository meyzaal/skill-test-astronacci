// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserListResponse _$UserListResponseFromJson(Map<String, dynamic> json) =>
    _UserListResponse(
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => Users.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserListResponseToJson(_UserListResponse instance) =>
    <String, dynamic>{
      'users': instance.users,
      'pagination': instance.pagination,
    };

_Users _$UsersFromJson(Map<String, dynamic> json) => _Users(
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      avatar: json['avatar'] as String?,
      bio: json['bio'] as String?,
      isMe: json['isMe'] as bool?,
    );

Map<String, dynamic> _$UsersToJson(_Users instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'avatar': instance.avatar,
      'bio': instance.bio,
      'isMe': instance.isMe,
    };

_Pagination _$PaginationFromJson(Map<String, dynamic> json) => _Pagination(
      total: (json['total'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PaginationToJson(_Pagination instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'totalPages': instance.totalPages,
    };
