// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserListResponse {
  List<Users>? get users;
  Pagination? get pagination;

  /// Create a copy of UserListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserListResponseCopyWith<UserListResponse> get copyWith =>
      _$UserListResponseCopyWithImpl<UserListResponse>(
          this as UserListResponse, _$identity);

  /// Serializes this UserListResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserListResponse &&
            const DeepCollectionEquality().equals(other.users, users) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(users), pagination);

  @override
  String toString() {
    return 'UserListResponse(users: $users, pagination: $pagination)';
  }
}

/// @nodoc
abstract mixin class $UserListResponseCopyWith<$Res> {
  factory $UserListResponseCopyWith(
          UserListResponse value, $Res Function(UserListResponse) _then) =
      _$UserListResponseCopyWithImpl;
  @useResult
  $Res call({List<Users>? users, Pagination? pagination});

  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$UserListResponseCopyWithImpl<$Res>
    implements $UserListResponseCopyWith<$Res> {
  _$UserListResponseCopyWithImpl(this._self, this._then);

  final UserListResponse _self;
  final $Res Function(UserListResponse) _then;

  /// Create a copy of UserListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_self.copyWith(
      users: freezed == users
          ? _self.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<Users>?,
      pagination: freezed == pagination
          ? _self.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ));
  }

  /// Create a copy of UserListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
      return null;
    }

    return $PaginationCopyWith<$Res>(_self.pagination!, (value) {
      return _then(_self.copyWith(pagination: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _UserListResponse implements UserListResponse {
  const _UserListResponse({final List<Users>? users, this.pagination})
      : _users = users;
  factory _UserListResponse.fromJson(Map<String, dynamic> json) =>
      _$UserListResponseFromJson(json);

  final List<Users>? _users;
  @override
  List<Users>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Pagination? pagination;

  /// Create a copy of UserListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserListResponseCopyWith<_UserListResponse> get copyWith =>
      __$UserListResponseCopyWithImpl<_UserListResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserListResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserListResponse &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_users), pagination);

  @override
  String toString() {
    return 'UserListResponse(users: $users, pagination: $pagination)';
  }
}

/// @nodoc
abstract mixin class _$UserListResponseCopyWith<$Res>
    implements $UserListResponseCopyWith<$Res> {
  factory _$UserListResponseCopyWith(
          _UserListResponse value, $Res Function(_UserListResponse) _then) =
      __$UserListResponseCopyWithImpl;
  @override
  @useResult
  $Res call({List<Users>? users, Pagination? pagination});

  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$UserListResponseCopyWithImpl<$Res>
    implements _$UserListResponseCopyWith<$Res> {
  __$UserListResponseCopyWithImpl(this._self, this._then);

  final _UserListResponse _self;
  final $Res Function(_UserListResponse) _then;

  /// Create a copy of UserListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? users = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_UserListResponse(
      users: freezed == users
          ? _self._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<Users>?,
      pagination: freezed == pagination
          ? _self.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ));
  }

  /// Create a copy of UserListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res>? get pagination {
    if (_self.pagination == null) {
      return null;
    }

    return $PaginationCopyWith<$Res>(_self.pagination!, (value) {
      return _then(_self.copyWith(pagination: value));
    });
  }
}

/// @nodoc
mixin _$Users {
  String? get id;
  String? get name;
  String? get email;
  String? get avatar;
  String? get bio;
  bool? get isMe;

  /// Create a copy of Users
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UsersCopyWith<Users> get copyWith =>
      _$UsersCopyWithImpl<Users>(this as Users, _$identity);

  /// Serializes this Users to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Users &&
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
    return 'Users(id: $id, name: $name, email: $email, avatar: $avatar, bio: $bio, isMe: $isMe)';
  }
}

/// @nodoc
abstract mixin class $UsersCopyWith<$Res> {
  factory $UsersCopyWith(Users value, $Res Function(Users) _then) =
      _$UsersCopyWithImpl;
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
class _$UsersCopyWithImpl<$Res> implements $UsersCopyWith<$Res> {
  _$UsersCopyWithImpl(this._self, this._then);

  final Users _self;
  final $Res Function(Users) _then;

  /// Create a copy of Users
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
class _Users implements Users {
  const _Users(
      {this.id, this.name, this.email, this.avatar, this.bio, this.isMe});
  factory _Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);

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

  /// Create a copy of Users
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UsersCopyWith<_Users> get copyWith =>
      __$UsersCopyWithImpl<_Users>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UsersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Users &&
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
    return 'Users(id: $id, name: $name, email: $email, avatar: $avatar, bio: $bio, isMe: $isMe)';
  }
}

/// @nodoc
abstract mixin class _$UsersCopyWith<$Res> implements $UsersCopyWith<$Res> {
  factory _$UsersCopyWith(_Users value, $Res Function(_Users) _then) =
      __$UsersCopyWithImpl;
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
class __$UsersCopyWithImpl<$Res> implements _$UsersCopyWith<$Res> {
  __$UsersCopyWithImpl(this._self, this._then);

  final _Users _self;
  final $Res Function(_Users) _then;

  /// Create a copy of Users
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
    return _then(_Users(
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
mixin _$Pagination {
  int? get total;
  int? get page;
  int? get limit;
  int? get totalPages;

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<Pagination> get copyWith =>
      _$PaginationCopyWithImpl<Pagination>(this as Pagination, _$identity);

  /// Serializes this Pagination to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Pagination &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, page, limit, totalPages);

  @override
  String toString() {
    return 'Pagination(total: $total, page: $page, limit: $limit, totalPages: $totalPages)';
  }
}

/// @nodoc
abstract mixin class $PaginationCopyWith<$Res> {
  factory $PaginationCopyWith(
          Pagination value, $Res Function(Pagination) _then) =
      _$PaginationCopyWithImpl;
  @useResult
  $Res call({int? total, int? page, int? limit, int? totalPages});
}

/// @nodoc
class _$PaginationCopyWithImpl<$Res> implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._self, this._then);

  final Pagination _self;
  final $Res Function(Pagination) _then;

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? totalPages = freezed,
  }) {
    return _then(_self.copyWith(
      total: freezed == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Pagination implements Pagination {
  const _Pagination({this.total, this.page, this.limit, this.totalPages});
  factory _Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);

  @override
  final int? total;
  @override
  final int? page;
  @override
  final int? limit;
  @override
  final int? totalPages;

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaginationCopyWith<_Pagination> get copyWith =>
      __$PaginationCopyWithImpl<_Pagination>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaginationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Pagination &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, page, limit, totalPages);

  @override
  String toString() {
    return 'Pagination(total: $total, page: $page, limit: $limit, totalPages: $totalPages)';
  }
}

/// @nodoc
abstract mixin class _$PaginationCopyWith<$Res>
    implements $PaginationCopyWith<$Res> {
  factory _$PaginationCopyWith(
          _Pagination value, $Res Function(_Pagination) _then) =
      __$PaginationCopyWithImpl;
  @override
  @useResult
  $Res call({int? total, int? page, int? limit, int? totalPages});
}

/// @nodoc
class __$PaginationCopyWithImpl<$Res> implements _$PaginationCopyWith<$Res> {
  __$PaginationCopyWithImpl(this._self, this._then);

  final _Pagination _self;
  final $Res Function(_Pagination) _then;

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? total = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? totalPages = freezed,
  }) {
    return _then(_Pagination(
      total: freezed == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
