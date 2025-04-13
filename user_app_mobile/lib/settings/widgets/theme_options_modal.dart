import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:user_app_mobile/l10n/l10n.dart';
import 'package:user_app_mobile/theme_mode/theme_mode.dart';

class ThemeOptionsModal extends StatelessWidget {
  const ThemeOptionsModal({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final currentTheme = context.select((ThemeModeCubit cubit) => cubit.state);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          title: Text(context.l10n.settingsThemeTitle),
          titleTextStyle: theme.textTheme.titleLarge,
        ),
        for (final theme in ThemeMode.values)
          RadioListTile(
            title: Text(context.l10n.settingsThemeOption(theme.name)),
            value: theme,
            groupValue: currentTheme,
            onChanged: (value) async {
              if (value == null) return;
              context.read<ThemeModeCubit>().changeTheme(value);
              await Future<void>.delayed(const Duration(milliseconds: 300));
              if (!context.mounted) return;
              context.pop();
            },
          ),
      ],
    );
  }
}
