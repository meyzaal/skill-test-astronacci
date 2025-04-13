// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EditProfileEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EditProfileEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'EditProfileEvent()';
  }
}

/// @nodoc
class $EditProfileEventCopyWith<$Res> {
  $EditProfileEventCopyWith(
      EditProfileEvent _, $Res Function(EditProfileEvent) __);
}

/// @nodoc

class EditProfileNameChanged implements EditProfileEvent {
  const EditProfileNameChanged(this.name);

  final String name;

  /// Create a copy of EditProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EditProfileNameChangedCopyWith<EditProfileNameChanged> get copyWith =>
      _$EditProfileNameChangedCopyWithImpl<EditProfileNameChanged>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditProfileNameChanged &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @override
  String toString() {
    return 'EditProfileEvent.nameChanged(name: $name)';
  }
}

/// @nodoc
abstract mixin class $EditProfileNameChangedCopyWith<$Res>
    implements $EditProfileEventCopyWith<$Res> {
  factory $EditProfileNameChangedCopyWith(EditProfileNameChanged value,
          $Res Function(EditProfileNameChanged) _then) =
      _$EditProfileNameChangedCopyWithImpl;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$EditProfileNameChangedCopyWithImpl<$Res>
    implements $EditProfileNameChangedCopyWith<$Res> {
  _$EditProfileNameChangedCopyWithImpl(this._self, this._then);

  final EditProfileNameChanged _self;
  final $Res Function(EditProfileNameChanged) _then;

  /// Create a copy of EditProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
  }) {
    return _then(EditProfileNameChanged(
      null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class EditProfileBioChanged implements EditProfileEvent {
  const EditProfileBioChanged(this.bio);

  final String bio;

  /// Create a copy of EditProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EditProfileBioChangedCopyWith<EditProfileBioChanged> get copyWith =>
      _$EditProfileBioChangedCopyWithImpl<EditProfileBioChanged>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditProfileBioChanged &&
            (identical(other.bio, bio) || other.bio == bio));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bio);

  @override
  String toString() {
    return 'EditProfileEvent.bioChanged(bio: $bio)';
  }
}

/// @nodoc
abstract mixin class $EditProfileBioChangedCopyWith<$Res>
    implements $EditProfileEventCopyWith<$Res> {
  factory $EditProfileBioChangedCopyWith(EditProfileBioChanged value,
          $Res Function(EditProfileBioChanged) _then) =
      _$EditProfileBioChangedCopyWithImpl;
  @useResult
  $Res call({String bio});
}

/// @nodoc
class _$EditProfileBioChangedCopyWithImpl<$Res>
    implements $EditProfileBioChangedCopyWith<$Res> {
  _$EditProfileBioChangedCopyWithImpl(this._self, this._then);

  final EditProfileBioChanged _self;
  final $Res Function(EditProfileBioChanged) _then;

  /// Create a copy of EditProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bio = null,
  }) {
    return _then(EditProfileBioChanged(
      null == bio
          ? _self.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class EditProfileSubmitted implements EditProfileEvent {
  const EditProfileSubmitted();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EditProfileSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'EditProfileEvent.submitted()';
  }
}

/// @nodoc
mixin _$EditProfileState {
  EditProfileStatus get status;
  String? get name;
  String? get bio;

  /// Create a copy of EditProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EditProfileStateCopyWith<EditProfileState> get copyWith =>
      _$EditProfileStateCopyWithImpl<EditProfileState>(
          this as EditProfileState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditProfileState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bio, bio) || other.bio == bio));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, name, bio);

  @override
  String toString() {
    return 'EditProfileState(status: $status, name: $name, bio: $bio)';
  }
}

/// @nodoc
abstract mixin class $EditProfileStateCopyWith<$Res> {
  factory $EditProfileStateCopyWith(
          EditProfileState value, $Res Function(EditProfileState) _then) =
      _$EditProfileStateCopyWithImpl;
  @useResult
  $Res call({EditProfileStatus status, String? name, String? bio});
}

/// @nodoc
class _$EditProfileStateCopyWithImpl<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  _$EditProfileStateCopyWithImpl(this._self, this._then);

  final EditProfileState _self;
  final $Res Function(EditProfileState) _then;

  /// Create a copy of EditProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? name = freezed,
    Object? bio = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as EditProfileStatus,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _self.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _EditProfileState implements EditProfileState {
  const _EditProfileState({required this.status, this.name, this.bio});

  @override
  final EditProfileStatus status;
  @override
  final String? name;
  @override
  final String? bio;

  /// Create a copy of EditProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EditProfileStateCopyWith<_EditProfileState> get copyWith =>
      __$EditProfileStateCopyWithImpl<_EditProfileState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditProfileState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bio, bio) || other.bio == bio));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, name, bio);

  @override
  String toString() {
    return 'EditProfileState(status: $status, name: $name, bio: $bio)';
  }
}

/// @nodoc
abstract mixin class _$EditProfileStateCopyWith<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  factory _$EditProfileStateCopyWith(
          _EditProfileState value, $Res Function(_EditProfileState) _then) =
      __$EditProfileStateCopyWithImpl;
  @override
  @useResult
  $Res call({EditProfileStatus status, String? name, String? bio});
}

/// @nodoc
class __$EditProfileStateCopyWithImpl<$Res>
    implements _$EditProfileStateCopyWith<$Res> {
  __$EditProfileStateCopyWithImpl(this._self, this._then);

  final _EditProfileState _self;
  final $Res Function(_EditProfileState) _then;

  /// Create a copy of EditProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? name = freezed,
    Object? bio = freezed,
  }) {
    return _then(_EditProfileState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as EditProfileStatus,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _self.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
