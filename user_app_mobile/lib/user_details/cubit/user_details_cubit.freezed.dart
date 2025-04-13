// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserDetailsState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserDetailsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UserDetailsState()';
  }
}

/// @nodoc
class $UserDetailsStateCopyWith<$Res> {
  $UserDetailsStateCopyWith(
      UserDetailsState _, $Res Function(UserDetailsState) __);
}

/// @nodoc

class UserDetailsInitial implements UserDetailsState {
  const UserDetailsInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserDetailsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UserDetailsState.initial()';
  }
}

/// @nodoc

class UserDetailsLoadInProgress implements UserDetailsState {
  const UserDetailsLoadInProgress();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserDetailsLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UserDetailsState.loadInProgress()';
  }
}

/// @nodoc

class UserDetailsLoadSuccess implements UserDetailsState {
  const UserDetailsLoadSuccess(this.user);

  final User user;

  /// Create a copy of UserDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserDetailsLoadSuccessCopyWith<UserDetailsLoadSuccess> get copyWith =>
      _$UserDetailsLoadSuccessCopyWithImpl<UserDetailsLoadSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserDetailsLoadSuccess &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'UserDetailsState.loadSuccess(user: $user)';
  }
}

/// @nodoc
abstract mixin class $UserDetailsLoadSuccessCopyWith<$Res>
    implements $UserDetailsStateCopyWith<$Res> {
  factory $UserDetailsLoadSuccessCopyWith(UserDetailsLoadSuccess value,
          $Res Function(UserDetailsLoadSuccess) _then) =
      _$UserDetailsLoadSuccessCopyWithImpl;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserDetailsLoadSuccessCopyWithImpl<$Res>
    implements $UserDetailsLoadSuccessCopyWith<$Res> {
  _$UserDetailsLoadSuccessCopyWithImpl(this._self, this._then);

  final UserDetailsLoadSuccess _self;
  final $Res Function(UserDetailsLoadSuccess) _then;

  /// Create a copy of UserDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
  }) {
    return _then(UserDetailsLoadSuccess(
      null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of UserDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc

class UserDetailsLoadFailure implements UserDetailsState {
  const UserDetailsLoadFailure();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserDetailsLoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UserDetailsState.loadFailure()';
  }
}

// dart format on
