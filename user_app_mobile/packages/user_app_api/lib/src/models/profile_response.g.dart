// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) =>
    _ProfileResponse(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileResponseToJson(_ProfileResponse instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

_User _$UserFromJson(Map<String, dynamic> json) => _User(
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      avatar: json['avatar'] as String?,
      bio: json['bio'] as String?,
    );

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'avatar': instance.avatar,
      'bio': instance.bio,
    };
