// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDetailResponse _$UserDetailResponseFromJson(Map<String, dynamic> json) =>
    _UserDetailResponse(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserDetailResponseToJson(_UserDetailResponse instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

_User _$UserFromJson(Map<String, dynamic> json) => _User(
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      avatar: json['avatar'] as String?,
      bio: json['bio'] as String?,
      isMe: json['isMe'] as bool?,
    );

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'avatar': instance.avatar,
      'bio': instance.bio,
      'isMe': instance.isMe,
    };
