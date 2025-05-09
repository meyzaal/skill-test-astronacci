part of 'users_bloc.dart';

@freezed
class UsersEvent with _$UsersEvent {
  const factory UsersEvent.search(String query) = SearchUsersEvent;
  const factory UsersEvent.load({@Default(false) bool forceRefresh}) =
      LoadUsersEvent;
}
