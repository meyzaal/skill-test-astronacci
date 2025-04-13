import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:user_app_mobile/l10n/l10n.dart';
import 'package:user_app_mobile/language/language.dart';

class LanguageOptionsModal extends StatelessWidget {
  const LanguageOptionsModal({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final currentLocale = context.select((LanguageCubit cubit) => cubit.state);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          title: Text(context.l10n.settingsLanguageTitle),
          titleTextStyle: theme.textTheme.titleLarge,
        ),
        for (final locale in AppLocalizations.supportedLocales)
          RadioListTile(
            title: Text(
                context.l10n.settingsLanguageOption(locale.toLanguageTag())),
            value: locale,
            groupValue: currentLocale,
            onChanged: (value) async {
              if (value == null) return;
              context.read<LanguageCubit>().changeLanguage(value);
              await Future<void>.delayed(const Duration(milliseconds: 300));
              if (!context.mounted) return;
              context.pop();
            },
          ),
      ],
    );
  }
}
