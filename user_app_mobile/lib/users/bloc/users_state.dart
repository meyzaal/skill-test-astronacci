part of 'users_bloc.dart';

enum UsersStatus { initial, loading, success, failure }

extension UsersStatusX on UsersStatus {
  bool get isInitial => this == UsersStatus.initial;
  bool get isLoading => this == UsersStatus.loading;
  bool get isSuccess => this == UsersStatus.success;
  bool get isFailure => this == UsersStatus.failure;
}

@Freezed(makeCollectionsUnmodifiable: false)
abstract class UsersState with _$UsersState {
  const factory UsersState({
    required UsersStatus status,
    required List<User> users,
    required int page,
    required bool hasReachedMax,
    required String searchQuery,
  }) = _UsersState;

  factory UsersState.initial() => const UsersState(
        status: UsersStatus.initial,
        users: [],
        page: 1,
        hasReachedMax: false,
        searchQuery: '',
      );
}
