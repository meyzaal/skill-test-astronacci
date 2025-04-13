import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_repository/user_repository.dart';

part 'user_details_state.dart';
part 'user_details_cubit.freezed.dart';

class UserDetailsCubit extends Cubit<UserDetailsState> {
  UserDetailsCubit({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(const UserDetailsState.initial());

  final UserRepository _userRepository;

  Future<void> fetchUserDetails(String userId) async {
    emit(const UserDetailsState.loadInProgress());
    try {
      final user = await _userRepository.getUserById(userId);
      emit(UserDetailsState.loadSuccess(user));
    } catch (e) {
      emit(const UserDetailsState.loadFailure());
    }
  }
}
