part of 'update_avatar_cubit.dart';

@freezed
sealed class UpdateAvatarState with _$UpdateAvatarState {
  const factory UpdateAvatarState.initial() = UpdateAvatarInitial;
  const factory UpdateAvatarState.loadInProgress() = UpdateAvatarLoadInProgress;
  const factory UpdateAvatarState.loadSuccess() = UpdateAvatarLoadSuccess;
  const factory UpdateAvatarState.loadFailure() = UpdateAvatarLoadFailure;
}

extension UpdateAvatarStateX on UpdateAvatarState {
  bool get isLoadSuccess => this is UpdateAvatarLoadSuccess;
  bool get isLoadFailure => this is UpdateAvatarLoadFailure;
  bool get isLoadInProgress => this is UpdateAvatarLoadInProgress;
}
