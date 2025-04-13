import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_app_mobile/edit_profile/edit_profile.dart';
import 'package:user_repository/user_repository.dart';

class EditProfileDialog extends StatelessWidget {
  const EditProfileDialog({super.key, this.name, this.bio});

  final String? name;
  final String? bio;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditProfileBloc(
        userRepository: context.read<UserRepository>(),
      ),
      child: Scaffold(
        body: EditProfileForm(
          name: name,
          bio: bio,
        ),
      ),
    );
  }
}
