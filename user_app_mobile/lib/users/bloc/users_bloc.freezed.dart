// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UsersEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UsersEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UsersEvent()';
  }
}

/// @nodoc
class $UsersEventCopyWith<$Res> {
  $UsersEventCopyWith(UsersEvent _, $Res Function(UsersEvent) __);
}

/// @nodoc

class SearchUsersEvent implements UsersEvent {
  const SearchUsersEvent(this.query);

  final String query;

  /// Create a copy of UsersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchUsersEventCopyWith<SearchUsersEvent> get copyWith =>
      _$SearchUsersEventCopyWithImpl<SearchUsersEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchUsersEvent &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @override
  String toString() {
    return 'UsersEvent.search(query: $query)';
  }
}

/// @nodoc
abstract mixin class $SearchUsersEventCopyWith<$Res>
    implements $UsersEventCopyWith<$Res> {
  factory $SearchUsersEventCopyWith(
          SearchUsersEvent value, $Res Function(SearchUsersEvent) _then) =
      _$SearchUsersEventCopyWithImpl;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$SearchUsersEventCopyWithImpl<$Res>
    implements $SearchUsersEventCopyWith<$Res> {
  _$SearchUsersEventCopyWithImpl(this._self, this._then);

  final SearchUsersEvent _self;
  final $Res Function(SearchUsersEvent) _then;

  /// Create a copy of UsersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? query = null,
  }) {
    return _then(SearchUsersEvent(
      null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class LoadUsersEvent implements UsersEvent {
  const LoadUsersEvent({this.forceRefresh = false});

  @JsonKey()
  final bool forceRefresh;

  /// Create a copy of UsersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoadUsersEventCopyWith<LoadUsersEvent> get copyWith =>
      _$LoadUsersEventCopyWithImpl<LoadUsersEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadUsersEvent &&
            (identical(other.forceRefresh, forceRefresh) ||
                other.forceRefresh == forceRefresh));
  }

  @override
  int get hashCode => Object.hash(runtimeType, forceRefresh);

  @override
  String toString() {
    return 'UsersEvent.load(forceRefresh: $forceRefresh)';
  }
}

/// @nodoc
abstract mixin class $LoadUsersEventCopyWith<$Res>
    implements $UsersEventCopyWith<$Res> {
  factory $LoadUsersEventCopyWith(
          LoadUsersEvent value, $Res Function(LoadUsersEvent) _then) =
      _$LoadUsersEventCopyWithImpl;
  @useResult
  $Res call({bool forceRefresh});
}

/// @nodoc
class _$LoadUsersEventCopyWithImpl<$Res>
    implements $LoadUsersEventCopyWith<$Res> {
  _$LoadUsersEventCopyWithImpl(this._self, this._then);

  final LoadUsersEvent _self;
  final $Res Function(LoadUsersEvent) _then;

  /// Create a copy of UsersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? forceRefresh = null,
  }) {
    return _then(LoadUsersEvent(
      forceRefresh: null == forceRefresh
          ? _self.forceRefresh
          : forceRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$UsersState {
  UsersStatus get status;
  List<User> get users;
  int get page;
  bool get hasReachedMax;
  String get searchQuery;

  /// Create a copy of UsersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UsersStateCopyWith<UsersState> get copyWith =>
      _$UsersStateCopyWithImpl<UsersState>(this as UsersState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UsersState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.users, users) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(users),
      page,
      hasReachedMax,
      searchQuery);

  @override
  String toString() {
    return 'UsersState(status: $status, users: $users, page: $page, hasReachedMax: $hasReachedMax, searchQuery: $searchQuery)';
  }
}

/// @nodoc
abstract mixin class $UsersStateCopyWith<$Res> {
  factory $UsersStateCopyWith(
          UsersState value, $Res Function(UsersState) _then) =
      _$UsersStateCopyWithImpl;
  @useResult
  $Res call(
      {UsersStatus status,
      List<User> users,
      int page,
      bool hasReachedMax,
      String searchQuery});
}

/// @nodoc
class _$UsersStateCopyWithImpl<$Res> implements $UsersStateCopyWith<$Res> {
  _$UsersStateCopyWithImpl(this._self, this._then);

  final UsersState _self;
  final $Res Function(UsersState) _then;

  /// Create a copy of UsersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? users = null,
    Object? page = null,
    Object? hasReachedMax = null,
    Object? searchQuery = null,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as UsersStatus,
      users: null == users
          ? _self.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      hasReachedMax: null == hasReachedMax
          ? _self.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      searchQuery: null == searchQuery
          ? _self.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _UsersState implements UsersState {
  const _UsersState(
      {required this.status,
      required this.users,
      required this.page,
      required this.hasReachedMax,
      required this.searchQuery});

  @override
  final UsersStatus status;
  @override
  final List<User> users;
  @override
  final int page;
  @override
  final bool hasReachedMax;
  @override
  final String searchQuery;

  /// Create a copy of UsersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UsersStateCopyWith<_UsersState> get copyWith =>
      __$UsersStateCopyWithImpl<_UsersState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UsersState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.users, users) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(users),
      page,
      hasReachedMax,
      searchQuery);

  @override
  String toString() {
    return 'UsersState(status: $status, users: $users, page: $page, hasReachedMax: $hasReachedMax, searchQuery: $searchQuery)';
  }
}

/// @nodoc
abstract mixin class _$UsersStateCopyWith<$Res>
    implements $UsersStateCopyWith<$Res> {
  factory _$UsersStateCopyWith(
          _UsersState value, $Res Function(_UsersState) _then) =
      __$UsersStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {UsersStatus status,
      List<User> users,
      int page,
      bool hasReachedMax,
      String searchQuery});
}

/// @nodoc
class __$UsersStateCopyWithImpl<$Res> implements _$UsersStateCopyWith<$Res> {
  __$UsersStateCopyWithImpl(this._self, this._then);

  final _UsersState _self;
  final $Res Function(_UsersState) _then;

  /// Create a copy of UsersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? users = null,
    Object? page = null,
    Object? hasReachedMax = null,
    Object? searchQuery = null,
  }) {
    return _then(_UsersState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as UsersStatus,
      users: null == users
          ? _self.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      hasReachedMax: null == hasReachedMax
          ? _self.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      searchQuery: null == searchQuery
          ? _self.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
