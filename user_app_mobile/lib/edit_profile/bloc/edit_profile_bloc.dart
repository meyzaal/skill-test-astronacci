
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_repository/user_repository.dart';

part 'edit_profile_event.dart';
part 'edit_profile_state.dart';
part 'edit_profile_bloc.freezed.dart';

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  EditProfileBloc({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(const EditProfileState(status: EditProfileStatus.initial)) {
    on<EditProfileNameChanged>(_onEditProfileNameChanged);
    on<EditProfileBioChanged>(_onEditProfileBioChanged);
    on<EditProfileSubmitted>(_onEditProfileSubmitted);
  }

  final UserRepository _userRepository;

  void _onEditProfileNameChanged(
    EditProfileNameChanged event,
    Emitter<EditProfileState> emit,
  ) {
    emit(state.copyWith(name: event.name));
  }

  void _onEditProfileBioChanged(
    EditProfileBioChanged event,
    Emitter<EditProfileState> emit,
  ) {
    emit(state.copyWith(bio: event.bio));
  }

  Future<void> _onEditProfileSubmitted(
    EditProfileSubmitted event,
    Emitter<EditProfileState> emit,
  ) async {
    emit(state.copyWith(status: EditProfileStatus.loading));
    try {
      await _userRepository.updateProfile(
        name: state.name,
        bio: state.bio,
      );
      emit(state.copyWith(status: EditProfileStatus.success));
    } catch (e) {
      emit(state.copyWith(status: EditProfileStatus.failure));
    }
  }
}
