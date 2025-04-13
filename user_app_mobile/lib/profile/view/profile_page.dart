import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_app_mobile/profile/profile.dart';
import 'package:user_app_mobile/update_avatar/cubit/update_avatar_cubit.dart';
import 'package:user_repository/user_repository.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ProfileCubit(
              userRepository: context.read<UserRepository>(),
            )..loadProfile(),
          ),
          BlocProvider(
            create: (context) => UpdateAvatarCubit(
              userRepository: context.read<UserRepository>(),
            ),
          ),
        ],
        child: const ProfileView(),
      ),
    );
  }
}
