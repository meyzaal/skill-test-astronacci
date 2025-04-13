// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserList {
  List<User> get users;
  Meta get meta;

  /// Create a copy of UserList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserListCopyWith<UserList> get copyWith =>
      _$UserListCopyWithImpl<UserList>(this as UserList, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserList &&
            const DeepCollectionEquality().equals(other.users, users) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(users), meta);

  @override
  String toString() {
    return 'UserList(users: $users, meta: $meta)';
  }
}

/// @nodoc
abstract mixin class $UserListCopyWith<$Res> {
  factory $UserListCopyWith(UserList value, $Res Function(UserList) _then) =
      _$UserListCopyWithImpl;
  @useResult
  $Res call({List<User> users, Meta meta});

  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$UserListCopyWithImpl<$Res> implements $UserListCopyWith<$Res> {
  _$UserListCopyWithImpl(this._self, this._then);

  final UserList _self;
  final $Res Function(UserList) _then;

  /// Create a copy of UserList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? meta = null,
  }) {
    return _then(_self.copyWith(
      users: null == users
          ? _self.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      meta: null == meta
          ? _self.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ));
  }

  /// Create a copy of UserList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_self.meta, (value) {
      return _then(_self.copyWith(meta: value));
    });
  }
}

/// @nodoc

class _UserList implements UserList {
  const _UserList({required final List<User> users, required this.meta})
      : _users = users;

  final List<User> _users;
  @override
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final Meta meta;

  /// Create a copy of UserList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserListCopyWith<_UserList> get copyWith =>
      __$UserListCopyWithImpl<_UserList>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserList &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_users), meta);

  @override
  String toString() {
    return 'UserList(users: $users, meta: $meta)';
  }
}

/// @nodoc
abstract mixin class _$UserListCopyWith<$Res>
    implements $UserListCopyWith<$Res> {
  factory _$UserListCopyWith(_UserList value, $Res Function(_UserList) _then) =
      __$UserListCopyWithImpl;
  @override
  @useResult
  $Res call({List<User> users, Meta meta});

  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$UserListCopyWithImpl<$Res> implements _$UserListCopyWith<$Res> {
  __$UserListCopyWithImpl(this._self, this._then);

  final _UserList _self;
  final $Res Function(_UserList) _then;

  /// Create a copy of UserList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? users = null,
    Object? meta = null,
  }) {
    return _then(_UserList(
      users: null == users
          ? _self._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      meta: null == meta
          ? _self.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ));
  }

  /// Create a copy of UserList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_self.meta, (value) {
      return _then(_self.copyWith(meta: value));
    });
  }
}

// dart format on
