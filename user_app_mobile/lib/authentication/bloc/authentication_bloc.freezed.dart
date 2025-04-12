// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthenticationEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthenticationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticationEvent()';
  }
}

/// @nodoc
class $AuthenticationEventCopyWith<$Res> {
  $AuthenticationEventCopyWith(
      AuthenticationEvent _, $Res Function(AuthenticationEvent) __);
}

/// @nodoc

class AuthenticationStatusChanged implements AuthenticationEvent {
  const AuthenticationStatusChanged(this.status);

  final AuthenticationStatus status;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthenticationStatusChangedCopyWith<AuthenticationStatusChanged>
      get copyWith => _$AuthenticationStatusChangedCopyWithImpl<
          AuthenticationStatusChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthenticationStatusChanged &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @override
  String toString() {
    return 'AuthenticationEvent.statusChanged(status: $status)';
  }
}

/// @nodoc
abstract mixin class $AuthenticationStatusChangedCopyWith<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationStatusChangedCopyWith(
          AuthenticationStatusChanged value,
          $Res Function(AuthenticationStatusChanged) _then) =
      _$AuthenticationStatusChangedCopyWithImpl;
  @useResult
  $Res call({AuthenticationStatus status});
}

/// @nodoc
class _$AuthenticationStatusChangedCopyWithImpl<$Res>
    implements $AuthenticationStatusChangedCopyWith<$Res> {
  _$AuthenticationStatusChangedCopyWithImpl(this._self, this._then);

  final AuthenticationStatusChanged _self;
  final $Res Function(AuthenticationStatusChanged) _then;

  /// Create a copy of AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
  }) {
    return _then(AuthenticationStatusChanged(
      null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
    ));
  }
}

/// @nodoc

class AuthenticationSignedOut implements AuthenticationEvent {
  const AuthenticationSignedOut();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthenticationSignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticationEvent.signedOut()';
  }
}

AuthenticationState _$AuthenticationStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return AuthenticationInitial.fromJson(json);
    case 'authenticated':
      return AuthenticationAuthenticated.fromJson(json);
    case 'unauthenticated':
      return AuthenticationUnauthenticated.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AuthenticationState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AuthenticationState {
  /// Serializes this AuthenticationState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthenticationState);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticationState()';
  }
}

/// @nodoc
class $AuthenticationStateCopyWith<$Res> {
  $AuthenticationStateCopyWith(
      AuthenticationState _, $Res Function(AuthenticationState) __);
}

/// @nodoc
@JsonSerializable()
class AuthenticationInitial implements AuthenticationState {
  const AuthenticationInitial({final String? $type})
      : $type = $type ?? 'initial';
  factory AuthenticationInitial.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationInitialFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$AuthenticationInitialToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthenticationInitial);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticationState.initial()';
  }
}

/// @nodoc
@JsonSerializable()
class AuthenticationAuthenticated implements AuthenticationState {
  const AuthenticationAuthenticated({final String? $type})
      : $type = $type ?? 'authenticated';
  factory AuthenticationAuthenticated.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationAuthenticatedFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$AuthenticationAuthenticatedToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthenticationAuthenticated);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticationState.authenticated()';
  }
}

/// @nodoc
@JsonSerializable()
class AuthenticationUnauthenticated implements AuthenticationState {
  const AuthenticationUnauthenticated({final String? $type})
      : $type = $type ?? 'unauthenticated';
  factory AuthenticationUnauthenticated.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationUnauthenticatedFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$AuthenticationUnauthenticatedToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthenticationUnauthenticated);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthenticationState.unauthenticated()';
  }
}

// dart format on
