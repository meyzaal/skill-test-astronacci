import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:user_repository/user_repository.dart';

part 'users_bloc.freezed.dart';
part 'users_event.dart';
part 'users_state.dart';

const _usersPerPage = 15;
const throttleDuration = Duration(milliseconds: 100);
const debounceDuration = Duration(milliseconds: 500);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

EventTransformer<E> debounce<E>(Duration duration) {
  return (events, mapper) {
    return events.debounce(duration).switchMap(mapper);
  };
}

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  UsersBloc({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(UsersState.initial()) {
    on<SearchUsersEvent>(
      _onSearchUsers,
      transformer: debounce(debounceDuration),
    );
    on<LoadUsersEvent>(
      _onLoadUsers,
      transformer: throttleDroppable(throttleDuration),
    );
  }

  final UserRepository _userRepository;

  Future<void> _onSearchUsers(
    SearchUsersEvent event,
    Emitter<UsersState> emit,
  ) async {
    try {
      final result = await _userRepository.getUserList(
        page: 1,
        limit: _usersPerPage,
        search: event.query,
      );
      emit(
        state.copyWith(
          status: UsersStatus.success,
          users: result.users,
          page: result.meta.page,
          hasReachedMax: result.users.length == result.meta.total,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: UsersStatus.failure));
    }
  }

  Future<void> _onLoadUsers(
    LoadUsersEvent event,
    Emitter<UsersState> emit,
  ) async {
    if (!state.status.isSuccess) {
      emit(state.copyWith(status: UsersStatus.loading));
    }

    if (event.forceRefresh) {
      try {
        final result = await _userRepository.getUserList(
          page: 1,
          limit: _usersPerPage,
          search: state.searchQuery,
        );
        emit(
          state.copyWith(
            status: UsersStatus.success,
            users: result.users,
            page: result.meta.page,
            hasReachedMax: result.users.isEmpty,
          ),
        );
      } catch (e) {
        emit(state.copyWith(status: UsersStatus.failure));
      }
    }

    if (!state.hasReachedMax) {
      try {
        final result = await _userRepository.getUserList(
          page: state.page + 1,
          limit: _usersPerPage,
          search: state.searchQuery,
        );
        emit(
          state.copyWith(
            status: UsersStatus.success,
            users: [...state.users, ...result.users],
            page: result.meta.page,
            hasReachedMax: result.users.isEmpty,
          ),
        );
      } catch (e) {
        emit(state.copyWith(status: UsersStatus.failure));
      }
    }
  }
}
