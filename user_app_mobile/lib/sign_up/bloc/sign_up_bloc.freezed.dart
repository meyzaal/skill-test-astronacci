// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignUpEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignUpEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignUpEvent()';
  }
}

/// @nodoc
class $SignUpEventCopyWith<$Res> {
  $SignUpEventCopyWith(SignUpEvent _, $Res Function(SignUpEvent) __);
}

/// @nodoc

class SignUpNameChanged implements SignUpEvent {
  const SignUpNameChanged(this.name);

  final String name;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignUpNameChangedCopyWith<SignUpNameChanged> get copyWith =>
      _$SignUpNameChangedCopyWithImpl<SignUpNameChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpNameChanged &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @override
  String toString() {
    return 'SignUpEvent.nameChanged(name: $name)';
  }
}

/// @nodoc
abstract mixin class $SignUpNameChangedCopyWith<$Res>
    implements $SignUpEventCopyWith<$Res> {
  factory $SignUpNameChangedCopyWith(
          SignUpNameChanged value, $Res Function(SignUpNameChanged) _then) =
      _$SignUpNameChangedCopyWithImpl;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$SignUpNameChangedCopyWithImpl<$Res>
    implements $SignUpNameChangedCopyWith<$Res> {
  _$SignUpNameChangedCopyWithImpl(this._self, this._then);

  final SignUpNameChanged _self;
  final $Res Function(SignUpNameChanged) _then;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
  }) {
    return _then(SignUpNameChanged(
      null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class SignUpEmailChanged implements SignUpEvent {
  const SignUpEmailChanged(this.email);

  final String email;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignUpEmailChangedCopyWith<SignUpEmailChanged> get copyWith =>
      _$SignUpEmailChangedCopyWithImpl<SignUpEmailChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpEmailChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'SignUpEvent.emailChanged(email: $email)';
  }
}

/// @nodoc
abstract mixin class $SignUpEmailChangedCopyWith<$Res>
    implements $SignUpEventCopyWith<$Res> {
  factory $SignUpEmailChangedCopyWith(
          SignUpEmailChanged value, $Res Function(SignUpEmailChanged) _then) =
      _$SignUpEmailChangedCopyWithImpl;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$SignUpEmailChangedCopyWithImpl<$Res>
    implements $SignUpEmailChangedCopyWith<$Res> {
  _$SignUpEmailChangedCopyWithImpl(this._self, this._then);

  final SignUpEmailChanged _self;
  final $Res Function(SignUpEmailChanged) _then;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
  }) {
    return _then(SignUpEmailChanged(
      null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class SignUpPasswordChanged implements SignUpEvent {
  const SignUpPasswordChanged(this.password);

  final String password;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignUpPasswordChangedCopyWith<SignUpPasswordChanged> get copyWith =>
      _$SignUpPasswordChangedCopyWithImpl<SignUpPasswordChanged>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpPasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @override
  String toString() {
    return 'SignUpEvent.passwordChanged(password: $password)';
  }
}

/// @nodoc
abstract mixin class $SignUpPasswordChangedCopyWith<$Res>
    implements $SignUpEventCopyWith<$Res> {
  factory $SignUpPasswordChangedCopyWith(SignUpPasswordChanged value,
          $Res Function(SignUpPasswordChanged) _then) =
      _$SignUpPasswordChangedCopyWithImpl;
  @useResult
  $Res call({String password});
}

/// @nodoc
class _$SignUpPasswordChangedCopyWithImpl<$Res>
    implements $SignUpPasswordChangedCopyWith<$Res> {
  _$SignUpPasswordChangedCopyWithImpl(this._self, this._then);

  final SignUpPasswordChanged _self;
  final $Res Function(SignUpPasswordChanged) _then;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? password = null,
  }) {
    return _then(SignUpPasswordChanged(
      null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class SignUpConfirmedPasswordChanged implements SignUpEvent {
  const SignUpConfirmedPasswordChanged(this.confirmedPassword);

  final String confirmedPassword;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignUpConfirmedPasswordChangedCopyWith<SignUpConfirmedPasswordChanged>
      get copyWith => _$SignUpConfirmedPasswordChangedCopyWithImpl<
          SignUpConfirmedPasswordChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpConfirmedPasswordChanged &&
            (identical(other.confirmedPassword, confirmedPassword) ||
                other.confirmedPassword == confirmedPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmedPassword);

  @override
  String toString() {
    return 'SignUpEvent.confirmedPasswordChanged(confirmedPassword: $confirmedPassword)';
  }
}

/// @nodoc
abstract mixin class $SignUpConfirmedPasswordChangedCopyWith<$Res>
    implements $SignUpEventCopyWith<$Res> {
  factory $SignUpConfirmedPasswordChangedCopyWith(
          SignUpConfirmedPasswordChanged value,
          $Res Function(SignUpConfirmedPasswordChanged) _then) =
      _$SignUpConfirmedPasswordChangedCopyWithImpl;
  @useResult
  $Res call({String confirmedPassword});
}

/// @nodoc
class _$SignUpConfirmedPasswordChangedCopyWithImpl<$Res>
    implements $SignUpConfirmedPasswordChangedCopyWith<$Res> {
  _$SignUpConfirmedPasswordChangedCopyWithImpl(this._self, this._then);

  final SignUpConfirmedPasswordChanged _self;
  final $Res Function(SignUpConfirmedPasswordChanged) _then;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? confirmedPassword = null,
  }) {
    return _then(SignUpConfirmedPasswordChanged(
      null == confirmedPassword
          ? _self.confirmedPassword
          : confirmedPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class SignUpShowPasswordChanged implements SignUpEvent {
  const SignUpShowPasswordChanged(this.showPassword);

  final bool showPassword;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignUpShowPasswordChangedCopyWith<SignUpShowPasswordChanged> get copyWith =>
      _$SignUpShowPasswordChangedCopyWithImpl<SignUpShowPasswordChanged>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpShowPasswordChanged &&
            (identical(other.showPassword, showPassword) ||
                other.showPassword == showPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showPassword);

  @override
  String toString() {
    return 'SignUpEvent.showPasswordChanged(showPassword: $showPassword)';
  }
}

/// @nodoc
abstract mixin class $SignUpShowPasswordChangedCopyWith<$Res>
    implements $SignUpEventCopyWith<$Res> {
  factory $SignUpShowPasswordChangedCopyWith(SignUpShowPasswordChanged value,
          $Res Function(SignUpShowPasswordChanged) _then) =
      _$SignUpShowPasswordChangedCopyWithImpl;
  @useResult
  $Res call({bool showPassword});
}

/// @nodoc
class _$SignUpShowPasswordChangedCopyWithImpl<$Res>
    implements $SignUpShowPasswordChangedCopyWith<$Res> {
  _$SignUpShowPasswordChangedCopyWithImpl(this._self, this._then);

  final SignUpShowPasswordChanged _self;
  final $Res Function(SignUpShowPasswordChanged) _then;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? showPassword = null,
  }) {
    return _then(SignUpShowPasswordChanged(
      null == showPassword
          ? _self.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class SignUpSubmitted implements SignUpEvent {
  const SignUpSubmitted();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignUpSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SignUpEvent.submitted()';
  }
}

/// @nodoc
mixin _$SignUpState {
  FormzSubmissionStatus get status;
  Name get name;
  Email get email;
  Password get password;
  ConfirmedPassword get confirmedPassword;
  bool get showPassword;
  SignUpFailure get failure;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      _$SignUpStateCopyWithImpl<SignUpState>(this as SignUpState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmedPassword, confirmedPassword) ||
                other.confirmedPassword == confirmedPassword) &&
            (identical(other.showPassword, showPassword) ||
                other.showPassword == showPassword) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, name, email, password,
      confirmedPassword, showPassword, failure);

  @override
  String toString() {
    return 'SignUpState(status: $status, name: $name, email: $email, password: $password, confirmedPassword: $confirmedPassword, showPassword: $showPassword, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) _then) =
      _$SignUpStateCopyWithImpl;
  @useResult
  $Res call(
      {FormzSubmissionStatus status,
      Name name,
      Email email,
      Password password,
      ConfirmedPassword confirmedPassword,
      bool showPassword,
      SignUpFailure failure});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._self, this._then);

  final SignUpState _self;
  final $Res Function(SignUpState) _then;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? confirmedPassword = null,
    Object? showPassword = null,
    Object? failure = null,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmedPassword: null == confirmedPassword
          ? _self.confirmedPassword
          : confirmedPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPassword,
      showPassword: null == showPassword
          ? _self.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as SignUpFailure,
    ));
  }
}

/// @nodoc

class _SignUpState extends SignUpState {
  const _SignUpState(
      {required this.status,
      required this.name,
      required this.email,
      required this.password,
      required this.confirmedPassword,
      required this.showPassword,
      this.failure = SignUpFailure.unknown})
      : super._();

  @override
  final FormzSubmissionStatus status;
  @override
  final Name name;
  @override
  final Email email;
  @override
  final Password password;
  @override
  final ConfirmedPassword confirmedPassword;
  @override
  final bool showPassword;
  @override
  @JsonKey()
  final SignUpFailure failure;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SignUpStateCopyWith<_SignUpState> get copyWith =>
      __$SignUpStateCopyWithImpl<_SignUpState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignUpState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmedPassword, confirmedPassword) ||
                other.confirmedPassword == confirmedPassword) &&
            (identical(other.showPassword, showPassword) ||
                other.showPassword == showPassword) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, name, email, password,
      confirmedPassword, showPassword, failure);

  @override
  String toString() {
    return 'SignUpState(status: $status, name: $name, email: $email, password: $password, confirmedPassword: $confirmedPassword, showPassword: $showPassword, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class _$SignUpStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$SignUpStateCopyWith(
          _SignUpState value, $Res Function(_SignUpState) _then) =
      __$SignUpStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {FormzSubmissionStatus status,
      Name name,
      Email email,
      Password password,
      ConfirmedPassword confirmedPassword,
      bool showPassword,
      SignUpFailure failure});
}

/// @nodoc
class __$SignUpStateCopyWithImpl<$Res> implements _$SignUpStateCopyWith<$Res> {
  __$SignUpStateCopyWithImpl(this._self, this._then);

  final _SignUpState _self;
  final $Res Function(_SignUpState) _then;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? confirmedPassword = null,
    Object? showPassword = null,
    Object? failure = null,
  }) {
    return _then(_SignUpState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmedPassword: null == confirmedPassword
          ? _self.confirmedPassword
          : confirmedPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmedPassword,
      showPassword: null == showPassword
          ? _self.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as SignUpFailure,
    ));
  }
}

// dart format on
