// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForgotPasswordEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ForgotPasswordEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ForgotPasswordEvent()';
  }
}

/// @nodoc
class $ForgotPasswordEventCopyWith<$Res> {
  $ForgotPasswordEventCopyWith(
      ForgotPasswordEvent _, $Res Function(ForgotPasswordEvent) __);
}

/// @nodoc

class ForgotPasswordEmailChanged implements ForgotPasswordEvent {
  const ForgotPasswordEmailChanged(this.email);

  final String email;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ForgotPasswordEmailChangedCopyWith<ForgotPasswordEmailChanged>
      get copyWith =>
          _$ForgotPasswordEmailChangedCopyWithImpl<ForgotPasswordEmailChanged>(
              this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ForgotPasswordEmailChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'ForgotPasswordEvent.emailChanged(email: $email)';
  }
}

/// @nodoc
abstract mixin class $ForgotPasswordEmailChangedCopyWith<$Res>
    implements $ForgotPasswordEventCopyWith<$Res> {
  factory $ForgotPasswordEmailChangedCopyWith(ForgotPasswordEmailChanged value,
          $Res Function(ForgotPasswordEmailChanged) _then) =
      _$ForgotPasswordEmailChangedCopyWithImpl;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$ForgotPasswordEmailChangedCopyWithImpl<$Res>
    implements $ForgotPasswordEmailChangedCopyWith<$Res> {
  _$ForgotPasswordEmailChangedCopyWithImpl(this._self, this._then);

  final ForgotPasswordEmailChanged _self;
  final $Res Function(ForgotPasswordEmailChanged) _then;

  /// Create a copy of ForgotPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
  }) {
    return _then(ForgotPasswordEmailChanged(
      null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class ForgotPasswordSubmitted implements ForgotPasswordEvent {
  const ForgotPasswordSubmitted();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ForgotPasswordSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ForgotPasswordEvent.submitted()';
  }
}

/// @nodoc
mixin _$ForgotPasswordState {
  FormzSubmissionStatus get status;
  Email get email;
  String get resetToken;
  ForgotPasswordFailure get failure;

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith =>
      _$ForgotPasswordStateCopyWithImpl<ForgotPasswordState>(
          this as ForgotPasswordState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ForgotPasswordState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.resetToken, resetToken) ||
                other.resetToken == resetToken) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, email, resetToken, failure);

  @override
  String toString() {
    return 'ForgotPasswordState(status: $status, email: $email, resetToken: $resetToken, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) _then) =
      _$ForgotPasswordStateCopyWithImpl;
  @useResult
  $Res call(
      {FormzSubmissionStatus status,
      Email email,
      String resetToken,
      ForgotPasswordFailure failure});
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._self, this._then);

  final ForgotPasswordState _self;
  final $Res Function(ForgotPasswordState) _then;

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? email = null,
    Object? resetToken = null,
    Object? failure = null,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      resetToken: null == resetToken
          ? _self.resetToken
          : resetToken // ignore: cast_nullable_to_non_nullable
              as String,
      failure: null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordFailure,
    ));
  }
}

/// @nodoc

class _ForgotPasswordState extends ForgotPasswordState {
  const _ForgotPasswordState(
      {required this.status,
      required this.email,
      this.resetToken = '',
      this.failure = ForgotPasswordFailure.unknown})
      : super._();

  @override
  final FormzSubmissionStatus status;
  @override
  final Email email;
  @override
  @JsonKey()
  final String resetToken;
  @override
  @JsonKey()
  final ForgotPasswordFailure failure;

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ForgotPasswordStateCopyWith<_ForgotPasswordState> get copyWith =>
      __$ForgotPasswordStateCopyWithImpl<_ForgotPasswordState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ForgotPasswordState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.resetToken, resetToken) ||
                other.resetToken == resetToken) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, email, resetToken, failure);

  @override
  String toString() {
    return 'ForgotPasswordState(status: $status, email: $email, resetToken: $resetToken, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class _$ForgotPasswordStateCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$ForgotPasswordStateCopyWith(_ForgotPasswordState value,
          $Res Function(_ForgotPasswordState) _then) =
      __$ForgotPasswordStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {FormzSubmissionStatus status,
      Email email,
      String resetToken,
      ForgotPasswordFailure failure});
}

/// @nodoc
class __$ForgotPasswordStateCopyWithImpl<$Res>
    implements _$ForgotPasswordStateCopyWith<$Res> {
  __$ForgotPasswordStateCopyWithImpl(this._self, this._then);

  final _ForgotPasswordState _self;
  final $Res Function(_ForgotPasswordState) _then;

  /// Create a copy of ForgotPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? email = null,
    Object? resetToken = null,
    Object? failure = null,
  }) {
    return _then(_ForgotPasswordState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      resetToken: null == resetToken
          ? _self.resetToken
          : resetToken // ignore: cast_nullable_to_non_nullable
              as String,
      failure: null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordFailure,
    ));
  }
}

// dart format on
