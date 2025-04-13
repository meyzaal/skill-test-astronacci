part of 'edit_profile_bloc.dart';

enum EditProfileStatus { initial, loading, success, failure }

@freezed
abstract class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    required EditProfileStatus status,
    String? name,
    String? bio,
  }) = _EditProfileState;
}

extension EditProfileStateX on EditProfileState {
  bool get isValid => name != null || bio != null;
}

extension EditProfileStatusX on EditProfileStatus {
  bool get isLoading => this == EditProfileStatus.loading;
  bool get isSuccess => this == EditProfileStatus.success;
  bool get isFailure => this == EditProfileStatus.failure;
}
