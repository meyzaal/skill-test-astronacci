import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_app_mobile/authentication/authentication.dart';
import 'package:user_app_mobile/l10n/l10n.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(context.l10n.settingsAppBarTitle),
          ),
          SliverList.list(
            children: [
              ListTile(
                textColor: Colors.red,
                title: Text(
                  context.l10n.settingsSignOutButtonText,
                ),
                onTap: () {
                  context
                      .read<AuthenticationBloc>()
                      .add(const AuthenticationEvent.signedOut());
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
