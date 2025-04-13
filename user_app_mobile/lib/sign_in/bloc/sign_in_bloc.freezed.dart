// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignInEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignInEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignInEvent()';
  }
}

/// @nodoc
class $SignInEventCopyWith<$Res> {
  $SignInEventCopyWith(SignInEvent _, $Res Function(SignInEvent) __);
}

/// @nodoc

class SignInEmailChanged implements SignInEvent {
  const SignInEmailChanged(this.email);

  final String email;

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignInEmailChangedCopyWith<SignInEmailChanged> get copyWith =>
      _$SignInEmailChangedCopyWithImpl<SignInEmailChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignInEmailChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'SignInEvent.emailChanged(email: $email)';
  }
}

/// @nodoc
abstract mixin class $SignInEmailChangedCopyWith<$Res>
    implements $SignInEventCopyWith<$Res> {
  factory $SignInEmailChangedCopyWith(
          SignInEmailChanged value, $Res Function(SignInEmailChanged) _then) =
      _$SignInEmailChangedCopyWithImpl;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$SignInEmailChangedCopyWithImpl<$Res>
    implements $SignInEmailChangedCopyWith<$Res> {
  _$SignInEmailChangedCopyWithImpl(this._self, this._then);

  final SignInEmailChanged _self;
  final $Res Function(SignInEmailChanged) _then;

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
  }) {
    return _then(SignInEmailChanged(
      null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class SignInPasswordChanged implements SignInEvent {
  const SignInPasswordChanged(this.password);

  final String password;

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignInPasswordChangedCopyWith<SignInPasswordChanged> get copyWith =>
      _$SignInPasswordChangedCopyWithImpl<SignInPasswordChanged>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignInPasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @override
  String toString() {
    return 'SignInEvent.passwordChanged(password: $password)';
  }
}

/// @nodoc
abstract mixin class $SignInPasswordChangedCopyWith<$Res>
    implements $SignInEventCopyWith<$Res> {
  factory $SignInPasswordChangedCopyWith(SignInPasswordChanged value,
          $Res Function(SignInPasswordChanged) _then) =
      _$SignInPasswordChangedCopyWithImpl;
  @useResult
  $Res call({String password});
}

/// @nodoc
class _$SignInPasswordChangedCopyWithImpl<$Res>
    implements $SignInPasswordChangedCopyWith<$Res> {
  _$SignInPasswordChangedCopyWithImpl(this._self, this._then);

  final SignInPasswordChanged _self;
  final $Res Function(SignInPasswordChanged) _then;

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? password = null,
  }) {
    return _then(SignInPasswordChanged(
      null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class SignInShowPasswordChanged implements SignInEvent {
  const SignInShowPasswordChanged(this.showPassword);

  final bool showPassword;

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignInShowPasswordChangedCopyWith<SignInShowPasswordChanged> get copyWith =>
      _$SignInShowPasswordChangedCopyWithImpl<SignInShowPasswordChanged>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignInShowPasswordChanged &&
            (identical(other.showPassword, showPassword) ||
                other.showPassword == showPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showPassword);

  @override
  String toString() {
    return 'SignInEvent.showPasswordChanged(showPassword: $showPassword)';
  }
}

/// @nodoc
abstract mixin class $SignInShowPasswordChangedCopyWith<$Res>
    implements $SignInEventCopyWith<$Res> {
  factory $SignInShowPasswordChangedCopyWith(SignInShowPasswordChanged value,
          $Res Function(SignInShowPasswordChanged) _then) =
      _$SignInShowPasswordChangedCopyWithImpl;
  @useResult
  $Res call({bool showPassword});
}

/// @nodoc
class _$SignInShowPasswordChangedCopyWithImpl<$Res>
    implements $SignInShowPasswordChangedCopyWith<$Res> {
  _$SignInShowPasswordChangedCopyWithImpl(this._self, this._then);

  final SignInShowPasswordChanged _self;
  final $Res Function(SignInShowPasswordChanged) _then;

  /// Create a copy of SignInEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? showPassword = null,
  }) {
    return _then(SignInShowPasswordChanged(
      null == showPassword
          ? _self.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class SignInSubmitted implements SignInEvent {
  const SignInSubmitted();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignInSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignInEvent.submitted()';
  }
}

/// @nodoc
mixin _$SignInState {
  FormzSubmissionStatus get status;
  Email get email;
  Password get password;
  bool get showPassword;
  SignInFailure get failure;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignInStateCopyWith<SignInState> get copyWith =>
      _$SignInStateCopyWithImpl<SignInState>(this as SignInState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignInState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.showPassword, showPassword) ||
                other.showPassword == showPassword) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, email, password, showPassword, failure);

  @override
  String toString() {
    return 'SignInState(status: $status, email: $email, password: $password, showPassword: $showPassword, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) _then) =
      _$SignInStateCopyWithImpl;
  @useResult
  $Res call(
      {FormzSubmissionStatus status,
      Email email,
      Password password,
      bool showPassword,
      SignInFailure failure});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._self, this._then);

  final SignInState _self;
  final $Res Function(SignInState) _then;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? email = null,
    Object? password = null,
    Object? showPassword = null,
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
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showPassword: null == showPassword
          ? _self.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as SignInFailure,
    ));
  }
}

/// @nodoc

class _SignInState extends SignInState {
  const _SignInState(
      {required this.status,
      required this.email,
      required this.password,
      required this.showPassword,
      this.failure = SignInFailure.unknown})
      : super._();

  @override
  final FormzSubmissionStatus status;
  @override
  final Email email;
  @override
  final Password password;
  @override
  final bool showPassword;
  @override
  @JsonKey()
  final SignInFailure failure;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      __$SignInStateCopyWithImpl<_SignInState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.showPassword, showPassword) ||
                other.showPassword == showPassword) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, email, password, showPassword, failure);

  @override
  String toString() {
    return 'SignInState(status: $status, email: $email, password: $password, showPassword: $showPassword, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class _$SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$SignInStateCopyWith(
          _SignInState value, $Res Function(_SignInState) _then) =
      __$SignInStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {FormzSubmissionStatus status,
      Email email,
      Password password,
      bool showPassword,
      SignInFailure failure});
}

/// @nodoc
class __$SignInStateCopyWithImpl<$Res> implements _$SignInStateCopyWith<$Res> {
  __$SignInStateCopyWithImpl(this._self, this._then);

  final _SignInState _self;
  final $Res Function(_SignInState) _then;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? email = null,
    Object? password = null,
    Object? showPassword = null,
    Object? failure = null,
  }) {
    return _then(_SignInState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showPassword: null == showPassword
          ? _self.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as SignInFailure,
    ));
  }
}

// dart format on
