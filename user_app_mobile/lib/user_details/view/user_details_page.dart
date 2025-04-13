import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_app_mobile/user_details/user_details.dart';
import 'package:user_repository/user_repository.dart';

class UserDetailsPage extends StatelessWidget {
  const UserDetailsPage({required this.userId, super.key});

  final String userId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserDetailsCubit(
        userRepository: context.read<UserRepository>(),
      )..fetchUserDetails(userId),
      child: const UserDetailsView(),
    );
  }
}
