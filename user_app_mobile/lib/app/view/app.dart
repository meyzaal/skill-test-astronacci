import 'package:flutter/material.dart';
import 'package:user_app_mobile/app/app.dart';
import 'package:user_app_mobile/counter/counter.dart';
import 'package:user_app_mobile/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    const theme = AppTheme();

    return MaterialApp(
      theme: theme.light(),
      darkTheme: theme.dark(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const CounterPage(),
    );
  }
}
