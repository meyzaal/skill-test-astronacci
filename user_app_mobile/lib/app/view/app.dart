import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:user_app_mobile/app/app.dart';
import 'package:user_app_mobile/authentication/authentication.dart';
import 'package:user_app_mobile/l10n/l10n.dart';
import 'package:user_repository/user_repository.dart';

class App extends StatelessWidget {
  App({
    required AuthenticationRepository authenticationRepository,
    required UserRepository userRepository,
    super.key,
  })  : _authenticationBloc = AuthenticationBloc(
          authenticationRepository: authenticationRepository,
        ),
        _authenticationRepository = authenticationRepository,
        _userRepository = userRepository;

  final AuthenticationBloc _authenticationBloc;
  final AuthenticationRepository _authenticationRepository;
  final UserRepository _userRepository;

  late final GoRouter _router = AppRouter(
    authenticationBloc: _authenticationBloc,
  ).router;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: _authenticationRepository),
        RepositoryProvider(create: (context) => _userRepository),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            lazy: false,
            create: (context) => _authenticationBloc,
          ),
        ],
        child: AppView(routerConfig: _router),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({
    required this.routerConfig,
    super.key,
  });

  final GoRouter routerConfig;

  @override
  Widget build(BuildContext context) {
    const theme = AppTheme();

    return MaterialApp.router(
      theme: theme.light(),
      darkTheme: theme.dark(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: routerConfig,
    );
  }
}
