// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResetPasswordEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ResetPasswordEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ResetPasswordEvent()';
  }
}

/// @nodoc
class $ResetPasswordEventCopyWith<$Res> {
  $ResetPasswordEventCopyWith(
      ResetPasswordEvent _, $Res Function(ResetPasswordEvent) __);
}

/// @nodoc

class ResetPasswordStarted implements ResetPasswordEvent {
  const ResetPasswordStarted({required this.resetToken});

  final String resetToken;

  /// Create a copy of ResetPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResetPasswordStartedCopyWith<ResetPasswordStarted> get copyWith =>
      _$ResetPasswordStartedCopyWithImpl<ResetPasswordStarted>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResetPasswordStarted &&
            (identical(other.resetToken, resetToken) ||
                other.resetToken == resetToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resetToken);

  @override
  String toString() {
    return 'ResetPasswordEvent.started(resetToken: $resetToken)';
  }
}

/// @nodoc
abstract mixin class $ResetPasswordStartedCopyWith<$Res>
    implements $ResetPasswordEventCopyWith<$Res> {
  factory $ResetPasswordStartedCopyWith(ResetPasswordStarted value,
          $Res Function(ResetPasswordStarted) _then) =
      _$ResetPasswordStartedCopyWithImpl;
  @useResult
  $Res call({String resetToken});
}

/// @nodoc
class _$ResetPasswordStartedCopyWithImpl<$Res>
    implements $ResetPasswordStartedCopyWith<$Res> {
  _$ResetPasswordStartedCopyWithImpl(this._self, this._then);

  final ResetPasswordStarted _self;
  final $Res Function(ResetPasswordStarted) _then;

  /// Create a copy of ResetPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? resetToken = null,
  }) {
    return _then(ResetPasswordStarted(
      resetToken: null == resetToken
          ? _self.resetToken
          : resetToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class ResetPasswordPasswordChanged implements ResetPasswordEvent {
  const ResetPasswordPasswordChanged(this.password);

  final String password;

  /// Create a copy of ResetPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResetPasswordPasswordChangedCopyWith<ResetPasswordPasswordChanged>
      get copyWith => _$ResetPasswordPasswordChangedCopyWithImpl<
          ResetPasswordPasswordChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResetPasswordPasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @override
  String toString() {
    return 'ResetPasswordEvent.passwordChanged(password: $password)';
  }
}

/// @nodoc
abstract mixin class $ResetPasswordPasswordChangedCopyWith<$Res>
    implements $ResetPasswordEventCopyWith<$Res> {
  factory $ResetPasswordPasswordChangedCopyWith(
          ResetPasswordPasswordChanged value,
          $Res Function(ResetPasswordPasswordChanged) _then) =
      _$ResetPasswordPasswordChangedCopyWithImpl;
  @useResult
  $Res call({String password});
}

/// @nodoc
class _$ResetPasswordPasswordChangedCopyWithImpl<$Res>
    implements $ResetPasswordPasswordChangedCopyWith<$Res> {
  _$ResetPasswordPasswordChangedCopyWithImpl(this._self, this._then);

  final ResetPasswordPasswordChanged _self;
  final $Res Function(ResetPasswordPasswordChanged) _then;

  /// Create a copy of ResetPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? password = null,
  }) {
    return _then(ResetPasswordPasswordChanged(
      null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class ResetPasswordConfirmedPasswordChanged implements ResetPasswordEvent {
  const ResetPasswordConfirmedPasswordChanged(this.confirmedPassword);

  final String confirmedPassword;

  /// Create a copy of ResetPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResetPasswordConfirmedPasswordChangedCopyWith<
          ResetPasswordConfirmedPasswordChanged>
      get copyWith => _$ResetPasswordConfirmedPasswordChangedCopyWithImpl<
          ResetPasswordConfirmedPasswordChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResetPasswordConfirmedPasswordChanged &&
            (identical(other.confirmedPassword, confirmedPassword) ||
                other.confirmedPassword == confirmedPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmedPassword);

  @override
  String toString() {
    return 'ResetPasswordEvent.confirmedPasswordChanged(confirmedPassword: $confirmedPassword)';
  }
}

/// @nodoc
abstract mixin class $ResetPasswordConfirmedPasswordChangedCopyWith<$Res>
    implements $ResetPasswordEventCopyWith<$Res> {
  factory $ResetPasswordConfirmedPasswordChangedCopyWith(
          ResetPasswordConfirmedPasswordChanged value,
          $Res Function(ResetPasswordConfirmedPasswordChanged) _then) =
      _$ResetPasswordConfirmedPasswordChangedCopyWithImpl;
  @useResult
  $Res call({String confirmedPassword});
}

/// @nodoc
class _$ResetPasswordConfirmedPasswordChangedCopyWithImpl<$Res>
    implements $ResetPasswordConfirmedPasswordChangedCopyWith<$Res> {
  _$ResetPasswordConfirmedPasswordChangedCopyWithImpl(this._self, this._then);

  final ResetPasswordConfirmedPasswordChanged _self;
  final $Res Function(ResetPasswordConfirmedPasswordChanged) _then;

  /// Create a copy of ResetPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? confirmedPassword = null,
  }) {
    return _then(ResetPasswordConfirmedPasswordChanged(
      null == confirmedPassword
          ? _self.confirmedPassword
          : confirmedPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class ResetPasswordShowPasswordChanged implements ResetPasswordEvent {
  const ResetPasswordShowPasswordChanged(this.showPassword);

  final bool showPassword;

  /// Create a copy of ResetPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResetPasswordShowPasswordChangedCopyWith<ResetPasswordShowPasswordChanged>
      get copyWith => _$ResetPasswordShowPasswordChangedCopyWithImpl<
          ResetPasswordShowPasswordChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResetPasswordShowPasswordChanged &&
            (identical(other.showPassword, showPassword) ||
                other.showPassword == showPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showPassword);

  @override
  String toString() {
    return 'ResetPasswordEvent.showPasswordChanged(showPassword: $showPassword)';
  }
}

/// @nodoc
abstract mixin class $ResetPasswordShowPasswordChangedCopyWith<$Res>
    implements $ResetPasswordEventCopyWith<$Res> {
  factory $ResetPasswordShowPasswordChangedCopyWith(
          ResetPasswordShowPasswordChanged value,
          $Res Function(ResetPasswordShowPasswordChanged) _then) =
      _$ResetPasswordShowPasswordChangedCopyWithImpl;
  @useResult
  $Res call({bool showPassword});
}

/// @nodoc
class _$ResetPasswordShowPasswordChangedCopyWithImpl<$Res>
    implements $ResetPasswordShowPasswordChangedCopyWith<$Res> {
  _$ResetPasswordShowPasswordChangedCopyWithImpl(this._self, this._then);

  final ResetPasswordShowPasswordChanged _self;
  final $Res Function(ResetPasswordShowPasswordChanged) _then;

  /// Create a copy of ResetPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? showPassword = null,
  }) {
    return _then(ResetPasswordShowPasswordChanged(
      null == showPassword
          ? _self.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class ResetPasswordSubmitted implements ResetPasswordEvent {
  const ResetPasswordSubmitted();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ResetPasswordSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ResetPasswordEvent.submitted()';
  }
}

/// @nodoc
mixin _$ResetPasswordState {
  Password get password;
  ConfirmedPassword get confirmedPassword;
  FormzSubmissionStatus get status;
  bool get showPassword;
  String get resetToken;
  ResetPasswordFailure get failure;

  /// Create a copy of ResetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResetPasswordStateCopyWith<ResetPasswordState> get copyWith =>
      _$ResetPasswordStateCopyWithImpl<ResetPasswordState>(
          this as ResetPasswordState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResetPasswordState &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmedPassword, confirmedPassword) ||
                other.confirmedPassword == confirmedPassword) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.showPassword, showPassword) ||
                other.showPassword == showPassword) &&
            (identical(other.resetToken, resetToken) ||
                other.resetToken == resetToken) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, confirmedPassword,
      status, showPassword, resetToken, failure);

  @override
  String toString() {
    return 'ResetPasswordState(password: $password, confirmedPassword: $confirmedPassword, status: $status, showPassword: $showPassword, resetToken: $resetToken, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class $ResetPasswordStateCopyWith<$Res> {
  factory $ResetPasswordStateCopyWith(
          ResetPasswordState value, $Res Function(ResetPasswordState) _then) =
      _$ResetPasswordStateCopyWithImpl;
  @useResult
  $Res call(
      {Password password,
      ConfirmedPassword confirmedPassword,
      FormzSubmissionStatus status,
      bool showPassword,
      String resetToken,
      ResetPasswordFailure failure});
}

/// @nodoc
class _$ResetPasswordStateCopyWithImpl<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  _$ResetPasswordStateCopyWithImpl(this._self, this._then);

  final ResetPasswordState _self;
  final $Res Function(ResetPasswordState) _then;

  /// Create a copy of ResetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? confirmedPassword = null,
    Object? status = null,
    Object? showPassword = null,
    Object? resetToken = null,
    Object? failure = null,
  }) {
    return _then(_self.copyWith(
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmedPassword: null == confirmedPassword
          ? _self.confirmedPassword
          : confirmedPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPassword,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      showPassword: null == showPassword
          ? _self.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      resetToken: null == resetToken
          ? _self.resetToken
          : resetToken // ignore: cast_nullable_to_non_nullable
              as String,
      failure: null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ResetPasswordFailure,
    ));
  }
}

/// @nodoc

class _ResetPasswordState extends ResetPasswordState {
  const _ResetPasswordState(
      {required this.password,
      required this.confirmedPassword,
      required this.status,
      required this.showPassword,
      this.resetToken = '',
      this.failure = ResetPasswordFailure.unknown})
      : super._();

  @override
  final Password password;
  @override
  final ConfirmedPassword confirmedPassword;
  @override
  final FormzSubmissionStatus status;
  @override
  final bool showPassword;
  @override
  @JsonKey()
  final String resetToken;
  @override
  @JsonKey()
  final ResetPasswordFailure failure;

  /// Create a copy of ResetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResetPasswordStateCopyWith<_ResetPasswordState> get copyWith =>
      __$ResetPasswordStateCopyWithImpl<_ResetPasswordState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResetPasswordState &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmedPassword, confirmedPassword) ||
                other.confirmedPassword == confirmedPassword) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.showPassword, showPassword) ||
                other.showPassword == showPassword) &&
            (identical(other.resetToken, resetToken) ||
                other.resetToken == resetToken) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, confirmedPassword,
      status, showPassword, resetToken, failure);

  @override
  String toString() {
    return 'ResetPasswordState(password: $password, confirmedPassword: $confirmedPassword, status: $status, showPassword: $showPassword, resetToken: $resetToken, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class _$ResetPasswordStateCopyWith<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  factory _$ResetPasswordStateCopyWith(
          _ResetPasswordState value, $Res Function(_ResetPasswordState) _then) =
      __$ResetPasswordStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Password password,
      ConfirmedPassword confirmedPassword,
      FormzSubmissionStatus status,
      bool showPassword,
      String resetToken,
      ResetPasswordFailure failure});
}

/// @nodoc
class __$ResetPasswordStateCopyWithImpl<$Res>
    implements _$ResetPasswordStateCopyWith<$Res> {
  __$ResetPasswordStateCopyWithImpl(this._self, this._then);

  final _ResetPasswordState _self;
  final $Res Function(_ResetPasswordState) _then;

  /// Create a copy of ResetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? password = null,
    Object? confirmedPassword = null,
    Object? status = null,
    Object? showPassword = null,
    Object? resetToken = null,
    Object? failure = null,
  }) {
    return _then(_ResetPasswordState(
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmedPassword: null == confirmedPassword
          ? _self.confirmedPassword
          : confirmedPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPassword,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      showPassword: null == showPassword
          ? _self.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      resetToken: null == resetToken
          ? _self.resetToken
          : resetToken // ignore: cast_nullable_to_non_nullable
              as String,
      failure: null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ResetPasswordFailure,
    ));
  }
}

// dart format on
