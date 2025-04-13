import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_app_mobile/authentication/authentication.dart';
import 'package:user_app_mobile/l10n/l10n.dart';
import 'package:user_app_mobile/language/language.dart';
import 'package:user_app_mobile/settings/settings.dart';
import 'package:user_app_mobile/theme_mode/theme_mode.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedLocale = context.select((LanguageCubit cubit) => cubit.state);
    final selectedTheme = context.select((ThemeModeCubit cubit) => cubit.state);
    final isSignedIn = context
        .select((AuthenticationBloc cubit) => cubit.state.isAuthenticated);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(context.l10n.settingsAppBarTitle),
          ),
          SliverList.list(
            children: [
              ListTile(
                title: Text(context.l10n.settingsLanguageTitle),
                subtitle: Text(context.l10n
                    .settingsLanguageOption(selectedLocale.toLanguageTag())),
                trailing: const Icon(Icons.chevron_right),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                onTap: () => showModalBottomSheet<void>(
                  context: context,
                  useRootNavigator: true,
                  showDragHandle: true,
                  builder: (context) => const LanguageOptionsModal(),
                ),
              ),
              ListTile(
                title: Text(context.l10n.settingsThemeTitle),
                subtitle:
                    Text(context.l10n.settingsThemeOption(selectedTheme.name)),
                trailing: const Icon(Icons.chevron_right),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                onTap: () => showModalBottomSheet<void>(
                  context: context,
                  useRootNavigator: true,
                  showDragHandle: true,
                  builder: (context) => const ThemeOptionsModal(),
                ),
              ),
              if (isSignedIn)
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
