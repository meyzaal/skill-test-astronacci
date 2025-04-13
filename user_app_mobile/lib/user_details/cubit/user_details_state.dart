part of 'user_details_cubit.dart';

@freezed
class UserDetailsState with _$UserDetailsState {
  const factory UserDetailsState.initial() = UserDetailsInitial;
  const factory UserDetailsState.loadInProgress() = UserDetailsLoadInProgress;
  const factory UserDetailsState.loadSuccess(User user) =
      UserDetailsLoadSuccess;
  const factory UserDetailsState.loadFailure() = UserDetailsLoadFailure;
}
