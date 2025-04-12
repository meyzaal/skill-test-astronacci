// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForgotPasswordResponse _$ForgotPasswordResponseFromJson(
        Map<String, dynamic> json) =>
    _ForgotPasswordResponse(
      message: json['message'] as String?,
      resetToken: json['resetToken'] as String?,
    );

Map<String, dynamic> _$ForgotPasswordResponseToJson(
        _ForgotPasswordResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'resetToken': instance.resetToken,
    };
