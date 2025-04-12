part of 'authentication_bloc.dart';

@freezed
sealed class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.statusChanged(AuthenticationStatus status) =
      AuthenticationStatusChanged;
  const factory AuthenticationEvent.signedOut() = AuthenticationSignedOut;
}
