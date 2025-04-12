// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForgotPasswordResponse {
  String? get message;
  String? get resetToken;

  /// Create a copy of ForgotPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ForgotPasswordResponseCopyWith<ForgotPasswordResponse> get copyWith =>
      _$ForgotPasswordResponseCopyWithImpl<ForgotPasswordResponse>(
          this as ForgotPasswordResponse, _$identity);

  /// Serializes this ForgotPasswordResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ForgotPasswordResponse &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.resetToken, resetToken) ||
                other.resetToken == resetToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, resetToken);

  @override
  String toString() {
    return 'ForgotPasswordResponse(message: $message, resetToken: $resetToken)';
  }
}

/// @nodoc
abstract mixin class $ForgotPasswordResponseCopyWith<$Res> {
  factory $ForgotPasswordResponseCopyWith(ForgotPasswordResponse value,
          $Res Function(ForgotPasswordResponse) _then) =
      _$ForgotPasswordResponseCopyWithImpl;
  @useResult
  $Res call({String? message, String? resetToken});
}

/// @nodoc
class _$ForgotPasswordResponseCopyWithImpl<$Res>
    implements $ForgotPasswordResponseCopyWith<$Res> {
  _$ForgotPasswordResponseCopyWithImpl(this._self, this._then);

  final ForgotPasswordResponse _self;
  final $Res Function(ForgotPasswordResponse) _then;

  /// Create a copy of ForgotPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? resetToken = freezed,
  }) {
    return _then(_self.copyWith(
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      resetToken: freezed == resetToken
          ? _self.resetToken
          : resetToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ForgotPasswordResponse implements ForgotPasswordResponse {
  const _ForgotPasswordResponse({this.message, this.resetToken});
  factory _ForgotPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordResponseFromJson(json);

  @override
  final String? message;
  @override
  final String? resetToken;

  /// Create a copy of ForgotPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ForgotPasswordResponseCopyWith<_ForgotPasswordResponse> get copyWith =>
      __$ForgotPasswordResponseCopyWithImpl<_ForgotPasswordResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ForgotPasswordResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ForgotPasswordResponse &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.resetToken, resetToken) ||
                other.resetToken == resetToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, resetToken);

  @override
  String toString() {
    return 'ForgotPasswordResponse(message: $message, resetToken: $resetToken)';
  }
}

/// @nodoc
abstract mixin class _$ForgotPasswordResponseCopyWith<$Res>
    implements $ForgotPasswordResponseCopyWith<$Res> {
  factory _$ForgotPasswordResponseCopyWith(_ForgotPasswordResponse value,
          $Res Function(_ForgotPasswordResponse) _then) =
      __$ForgotPasswordResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String? message, String? resetToken});
}

/// @nodoc
class __$ForgotPasswordResponseCopyWithImpl<$Res>
    implements _$ForgotPasswordResponseCopyWith<$Res> {
  __$ForgotPasswordResponseCopyWithImpl(this._self, this._then);

  final _ForgotPasswordResponse _self;
  final $Res Function(_ForgotPasswordResponse) _then;

  /// Create a copy of ForgotPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
    Object? resetToken = freezed,
  }) {
    return _then(_ForgotPasswordResponse(
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      resetToken: freezed == resetToken
          ? _self.resetToken
          : resetToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
