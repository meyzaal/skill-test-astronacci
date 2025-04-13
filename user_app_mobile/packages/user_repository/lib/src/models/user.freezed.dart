// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {
  String get id;
  String get name;
  String get email;
  String get bio;
  String get avatar;
  bool get isMe;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserCopyWith<User> get copyWith =>
      _$UserCopyWithImpl<User>(this as User, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.isMe, isMe) || other.isMe == isMe));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, email, bio, avatar, isMe);

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, bio: $bio, avatar: $avatar, isMe: $isMe)';
  }
}

/// @nodoc
abstract mixin class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) _then) =
      _$UserCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      String email,
      String bio,
      String avatar,
      bool isMe});
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
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? bio = null,
    Object? avatar = null,
    Object? isMe = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _self.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      isMe: null == isMe
          ? _self.isMe
          : isMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _User implements User {
  const _User(
      {required this.id,
      required this.name,
      required this.email,
      required this.bio,
      required this.avatar,
      this.isMe = false});

  @override
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String bio;
  @override
  final String avatar;
  @override
  @JsonKey()
  final bool isMe;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.isMe, isMe) || other.isMe == isMe));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, email, bio, avatar, isMe);

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, bio: $bio, avatar: $avatar, isMe: $isMe)';
  }
}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) =
      __$UserCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String email,
      String bio,
      String avatar,
      bool isMe});
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
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? bio = null,
    Object? avatar = null,
    Object? isMe = null,
  }) {
    return _then(_User(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _self.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      isMe: null == isMe
          ? _self.isMe
          : isMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
