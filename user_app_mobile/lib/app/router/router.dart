import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stream_listener/stream_listener.dart';
import 'package:user_app_mobile/authentication/authentication.dart';
import 'package:user_app_mobile/home/home.dart';
import 'package:user_app_mobile/profile/profile.dart';
import 'package:user_app_mobile/sign_in/sign_in.dart';
import 'package:user_app_mobile/sign_up/sign_up.dart';
import 'package:user_app_mobile/users/users.dart';

part 'router.g.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

class AppRouter {
  AppRouter({required AuthenticationBloc authenticationBloc})
      : _authenticationBloc = authenticationBloc;

  final AuthenticationBloc _authenticationBloc;

  late final GoRouter router = GoRouter(
    debugLogDiagnostics: kDebugMode,
    initialLocation: const UsersRoute().location,
    routes: $appRoutes,
    navigatorKey: _rootNavigatorKey,
    redirect: (context, state) {
      final signedIn = _authenticationBloc.state.isAuthenticated;

      final usersLoc = const UsersRoute().location;

      // check just the matchedLocation in case there are query parameters
      final signInLoc = const SignInRoute().location;
      final goingToSignIn = state.matchedLocation == signInLoc;

      final signUpLoc = const SignUpRoute().location;
      final goingToSignUp = state.matchedLocation == signUpLoc;

      // the user is not signed in and not headed to /sign-in, they need to sign in
      if (!signedIn && !goingToSignIn) return signInLoc;

      // the user is logged in and headed to /sign-in, send them to the home page
      if (signedIn && (goingToSignIn || goingToSignUp)) return usersLoc;

      // no need to redirect at all
      return null;
    },
    // changes on the listenable will cause the router to refresh it's route
    refreshListenable: StreamListener(
      _authenticationBloc.stream
          .map((state) => state.isAuthenticated)
          .distinct(),
    ),
  );
}

@TypedGoRoute<SignInRoute>(path: '/sign-in')
class SignInRoute extends GoRouteData {
  const SignInRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const SignInPage();
}

@TypedGoRoute<SignUpRoute>(path: '/sign-up')
class SignUpRoute extends GoRouteData {
  const SignUpRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const SignUpPage();
}

@TypedStatefulShellRoute<HomeRoute>(
  branches: [
    TypedStatefulShellBranch<BranchUsersData>(
      routes: [
        TypedGoRoute<UsersRoute>(path: '/users'),
      ],
    ),
    TypedStatefulShellBranch<BranchProfileData>(
      routes: [
        TypedGoRoute<ProfileRoute>(path: '/profile'),
      ],
    ),
  ],
)
class HomeRoute extends StatefulShellRouteData {
  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return navigationShell;
  }

  static const String $restorationScopeId = 'home';

  static Widget $navigationContainerBuilder(
    BuildContext context,
    StatefulNavigationShell navigationShell,
    List<Widget> children,
  ) {
    return HomePage(
      navigationShell: navigationShell,
      children: children,
    );
  }
}

class BranchUsersData extends StatefulShellBranchData {}

class UsersRoute extends GoRouteData {
  const UsersRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const UsersPage();
}

class BranchProfileData extends StatefulShellBranchData {}

class ProfileRoute extends GoRouteData {
  const ProfileRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ProfilePage();
}
