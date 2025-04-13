// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProfileState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProfileState()';
  }
}

/// @nodoc
class $ProfileStateCopyWith<$Res> {
  $ProfileStateCopyWith(ProfileState _, $Res Function(ProfileState) __);
}

/// @nodoc

class ProfileInitial implements ProfileState {
  const ProfileInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProfileInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProfileState.initial()';
  }
}

/// @nodoc

class ProfileLoadInProgress implements ProfileState {
  const ProfileLoadInProgress();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProfileLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProfileState.loadInProgress()';
  }
}

/// @nodoc

class ProfileLoadSuccess implements ProfileState {
  const ProfileLoadSuccess(this.user);

  final User user;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileLoadSuccessCopyWith<ProfileLoadSuccess> get copyWith =>
      _$ProfileLoadSuccessCopyWithImpl<ProfileLoadSuccess>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileLoadSuccess &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'ProfileState.loadSuccess(user: $user)';
  }
}

/// @nodoc
abstract mixin class $ProfileLoadSuccessCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory $ProfileLoadSuccessCopyWith(
          ProfileLoadSuccess value, $Res Function(ProfileLoadSuccess) _then) =
      _$ProfileLoadSuccessCopyWithImpl;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$ProfileLoadSuccessCopyWithImpl<$Res>
    implements $ProfileLoadSuccessCopyWith<$Res> {
  _$ProfileLoadSuccessCopyWithImpl(this._self, this._then);

  final ProfileLoadSuccess _self;
  final $Res Function(ProfileLoadSuccess) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
  }) {
    return _then(ProfileLoadSuccess(
      null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of ProfileState
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

class ProfileLoadFailure implements ProfileState {
  const ProfileLoadFailure();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProfileLoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProfileState.loadFailure()';
  }
}

// dart format on
