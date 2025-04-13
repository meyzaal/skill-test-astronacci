import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_app_mobile/l10n/l10n.dart';
import 'package:user_app_mobile/user_details/user_details.dart';

class UserDetailsView extends StatelessWidget {
  const UserDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailsCubit, UserDetailsState>(
      builder: (context, state) {
        return CustomScrollView(
          slivers: [
            SliverAppBar.large(
              title: Text(context.l10n.userDetailsAppBarTitle),
            ),
            if (state is UserDetailsLoadInProgress)
              const SliverFillRemaining(
                child: Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              ),
            if (state is UserDetailsLoadFailure)
              SliverFillRemaining(
                child: Center(
                  child: Text(context.l10n.userDetailsFailureMessage),
                ),
              ),
            if (state is UserDetailsLoadSuccess)
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 64,
                      backgroundImage: CachedNetworkImageProvider(
                        state.user.avatar,
                      ),
                    ),
                    const SizedBox(height: 24),
                    ListTile(
                      title: Text(context.l10n.userDetailsNameLabel),
                      subtitle: Text(state.user.name),
                    ),
                    ListTile(
                      title: Text(context.l10n.userDetailsEmailLabel),
                      subtitle: Text(state.user.email),
                    ),
                    ListTile(
                      title: Text(context.l10n.userDetailsBioLabel),
                      subtitle: Text(state.user.bio),
                    ),
                  ],
                ),
              ),
          ],
        );
      },
    );
  }
}
