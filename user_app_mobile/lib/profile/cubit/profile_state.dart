part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = ProfileInitial;
  const factory ProfileState.loadInProgress() = ProfileLoadInProgress;
  const factory ProfileState.loadSuccess(User user) = ProfileLoadSuccess;
  const factory ProfileState.loadFailure() = ProfileLoadFailure;
}
