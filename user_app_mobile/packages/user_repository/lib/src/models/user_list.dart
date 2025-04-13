import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_repository/user_repository.dart';

part 'user_list.freezed.dart';

@freezed
abstract class UserList with _$UserList {
  const factory UserList({
    required List<User> users,
    required Meta meta,
  }) = _UserList;
}
