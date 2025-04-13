part of 'edit_profile_bloc.dart';

@freezed
class EditProfileEvent with _$EditProfileEvent {
  const factory EditProfileEvent.nameChanged(String name) =
      EditProfileNameChanged;
  const factory EditProfileEvent.bioChanged(String bio) = EditProfileBioChanged;
  const factory EditProfileEvent.submitted() = EditProfileSubmitted;
}
