import 'dart:io';

import 'package:user_app_api/user_app_api.dart';
import 'package:user_repository/user_repository.dart';

/// {@template user_repository}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class UserRepository {
  /// {@macro user_repository}
  const UserRepository({
    required UserAppApi userAppApi,
  }) : _userAppApi = userAppApi;

  final UserAppApi _userAppApi;

  Future<User> getProfile() async {
    final response = await _userAppApi.getProfile();
    return response.toUser();
  }

  Future<UserList> getUserList({
    int? page,
    int? limit,
    String? search,
  }) async {
    final response =
        await _userAppApi.getUserList(page: page, limit: limit, search: search);
    return response.toUserList();
  }

  Future<User> getUserById(String id) async {
    final response = await _userAppApi.getUserDetail(id);
    return response.toUser();
  }

  Future<void> updateProfile({
    String? name,
    String? bio,
  }) async {
    await _userAppApi.updateProfile(name: name, bio: bio);
  }

  Future<void> updateAvatar(File? file) async {
    await _userAppApi.updateAvatar(file);
  }
}

extension on ProfileResponse {
  User toUser() {
    return User(
      id: user?.id ?? '',
      name: user?.name ?? '',
      email: user?.email ?? '',
      bio: user?.bio ?? '',
      avatar: user?.avatar ?? '',
      isMe: true,
    );
  }
}

extension on UserDetailResponse {
  User toUser() {
    return User(
      id: user?.id ?? '',
      name: user?.name ?? '',
      email: user?.email ?? '',
      bio: user?.bio ?? '',
      isMe: user?.isMe ?? false,
      avatar: user?.avatar ?? '',
    );
  }
}

extension on UserListResponse {
  UserList toUserList() {
    return UserList(
      users: (users ?? [])
          .map((e) => User(
                id: e.id ?? '',
                name: e.name ?? '',
                email: e.email ?? '',
                bio: e.bio ?? '',
                avatar: e.avatar ?? '',
                isMe: e.isMe ?? false,
              ),)
          .toList(),
      meta: Meta(
        total: pagination?.total ?? 0,
        page: pagination?.page ?? 0,
        limit: pagination?.limit ?? 0,
      ),
    );
  }
}
