import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_repository/user_repository.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit({required this.userRepository})
      : super(const ProfileState.initial());

  final UserRepository userRepository;

  Future<void> loadProfile() async {
    if (state is! ProfileLoadSuccess) emit(const ProfileState.loadInProgress());

    try {
      final user = await userRepository.getProfile();
      emit(ProfileState.loadSuccess(user));
    } catch (e) {
      emit(const ProfileState.loadFailure());
    }
  }
}
