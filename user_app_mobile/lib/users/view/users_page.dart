import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_app_mobile/users/users.dart';
import 'package:user_repository/user_repository.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => UsersBloc(
          userRepository: context.read<UserRepository>(),
        )..add(const UsersEvent.load(forceRefresh: true)),
        child: const UsersList(),
      ),
    );
  }
}
