// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserDetailResponse {
  User? get user;

  /// Create a copy of UserDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserDetailResponseCopyWith<UserDetailResponse> get copyWith =>
      _$UserDetailResponseCopyWithImpl<UserDetailResponse>(
          this as UserDetailResponse, _$identity);

  /// Serializes this UserDetailResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserDetailResponse &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'UserDetailResponse(user: $user)';
  }
}

/// @nodoc
abstract mixin class $UserDetailResponseCopyWith<$Res> {
  factory $UserDetailResponseCopyWith(
          UserDetailResponse value, $Res Function(UserDetailResponse) _then) =
      _$UserDetailResponseCopyWithImpl;
  @useResult
  $Res call({User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserDetailResponseCopyWithImpl<$Res>
    implements $UserDetailResponseCopyWith<$Res> {
  _$UserDetailResponseCopyWithImpl(this._self, this._then);

  final UserDetailResponse _self;
  final $Res Function(UserDetailResponse) _then;

  /// Create a copy of UserDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_self.copyWith(
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  /// Create a copy of UserDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _UserDetailResponse implements UserDetailResponse {
  const _UserDetailResponse({this.user});
  factory _UserDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$UserDetailResponseFromJson(json);

  @override
  final User? user;

  /// Create a copy of UserDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserDetailResponseCopyWith<_UserDetailResponse> get copyWith =>
      __$UserDetailResponseCopyWithImpl<_UserDetailResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserDetailResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDetailResponse &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'UserDetailResponse(user: $user)';
  }
}

/// @nodoc
abstract mixin class _$UserDetailResponseCopyWith<$Res>
    implements $UserDetailResponseCopyWith<$Res> {
  factory _$UserDetailResponseCopyWith(
          _UserDetailResponse value, $Res Function(_UserDetailResponse) _then) =
      __$UserDetailResponseCopyWithImpl;
  @override
  @useResult
  $Res call({User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$UserDetailResponseCopyWithImpl<$Res>
    implements _$UserDetailResponseCopyWith<$Res> {
  __$UserDetailResponseCopyWithImpl(this._self, this._then);

  final _UserDetailResponse _self;
  final $Res Function(_UserDetailResponse) _then;

  /// Create a copy of UserDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_UserDetailResponse(
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  /// Create a copy of UserDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
mixin _$User {
  String? get id;
  String? get name;
  String? get email;
  String? get avatar;
  String? get bio;
  bool? get isMe;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserCopyWith<User> get copyWith =>
      _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.isMe, isMe) || other.isMe == isMe));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, email, avatar, bio, isMe);

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, avatar: $avatar, bio: $bio, isMe: $isMe)';
  }
}

/// @nodoc
abstract mixin class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) _then) =
      _$UserCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? email,
      String? avatar,
      String? bio,
      bool? isMe});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? avatar = freezed,
    Object? bio = freezed,
    Object? isMe = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _self.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      isMe: freezed == isMe
          ? _self.isMe
          : isMe // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _User implements User {
  const _User(
      {this.id, this.name, this.email, this.avatar, this.bio, this.isMe});
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? avatar;
  @override
  final String? bio;
  @override
  final bool? isMe;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.isMe, isMe) || other.isMe == isMe));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, email, avatar, bio, isMe);

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, avatar: $avatar, bio: $bio, isMe: $isMe)';
  }
}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) =
      __$UserCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? email,
      String? avatar,
      String? bio,
      bool? isMe});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? avatar = freezed,
    Object? bio = freezed,
    Object? isMe = freezed,
  }) {
    return _then(_User(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _self.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      isMe: freezed == isMe
          ? _self.isMe
          : isMe // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on
