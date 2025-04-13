import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:user_app_mobile/app/app.dart';
import 'package:user_app_mobile/edit_profile/edit_profile.dart';
import 'package:user_app_mobile/l10n/l10n.dart';
import 'package:user_app_mobile/profile/profile.dart';
import 'package:user_app_mobile/update_avatar/update_avatar.dart';
import 'package:user_repository/user_repository.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return RefreshIndicator.adaptive(
          onRefresh: () async {
            await context.read<ProfileCubit>().loadProfile();
          },
          child: CustomScrollView(
            slivers: [
              SliverAppBar.large(
                title: Text(context.l10n.profileAppBarTitle),
                actions: [
                  IconButton(
                    onPressed: () {
                      const SettingsRoute().push<void>(context);
                    },
                    icon: const Icon(Icons.settings_outlined),
                  ),
                ],
              ),
              if (state is ProfileLoadInProgress)
                const SliverFillRemaining(
                  child: Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                ),
              if (state is ProfileLoadSuccess)
                SliverToBoxAdapter(
                  child: _UserInfo(state.user),
                ),
              if (state is ProfileLoadFailure)
                SliverFillRemaining(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(context.l10n.profileFailureMessage),
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo(this.user);

  final User user;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: 16,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16,
            children: [
              BlocConsumer<UpdateAvatarCubit, UpdateAvatarState>(
                listener: (context, state) {
                  if (state.isLoadSuccess) {
                    context.read<ProfileCubit>().loadProfile();
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(
                        SnackBar(
                          content:
                              Text(context.l10n.updateAvatarSuccessMessage),
                        ),
                      );
                  }
                  if (state.isLoadFailure) {
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(
                        SnackBar(
                            content:
                                Text(context.l10n.updateAvatarFailureMessage),),
                      );
                  }
                },
                builder: (context, state) {
                  return Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: CircleAvatar(
                          radius: 48,
                          foregroundImage:
                              CachedNetworkImageProvider(user.avatar),
                          child: Icon(
                            Icons.person,
                            size: 48,
                            color: theme.colorScheme.onPrimaryContainer,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: IconButton.filled(
                          onPressed: () async {
                            if (state.isLoadInProgress) return;
                            final action = await showModalBottomSheet<Object>(
                              context: context,
                              useRootNavigator: true,
                              showDragHandle: true,
                              builder: (context) => const ImageSourceModal(),
                            );
                            if (action == null) return;
                            if (!context.mounted) return;

                            if (action == 'delete') {
                              await context
                                  .read<UpdateAvatarCubit>()
                                  .deleteAvatar();
                            } else if (action is ImageSource) {
                              await context
                                  .read<UpdateAvatarCubit>()
                                  .updateAvatar(action);
                            }
                          },
                          icon: state.isLoadInProgress
                              ? SizedBox.square(
                                  dimension: 20,
                                  child: CircularProgressIndicator.adaptive(
                                    valueColor: AlwaysStoppedAnimation(
                                      theme.colorScheme.onPrimary,
                                    ),
                                  ),
                                )
                              : const Icon(Icons.edit),
                        ),
                      ),
                    ],
                  );
                },
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      user.name,
                      style: theme.textTheme.displaySmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      user.email,
                      style: theme.textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 16),
                    OutlinedButton(
                      onPressed: () async {
                        final updated = await showAdaptiveDialog<bool>(
                          context: context,
                          builder: (context) => Dialog.fullscreen(
                            child: EditProfileDialog(
                              name: user.name,
                              bio: user.bio,
                            ),
                          ),
                        );

                        if (updated != true) return;

                        await Future<void>.delayed(const Duration(seconds: 3));
                        if (!context.mounted) return;

                        await context.read<ProfileCubit>().loadProfile();
                      },
                      child: Text(context.l10n.profileEditButtonText),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ListTile(
            title: Text(context.l10n.profileBioLabel),
            subtitle: Text(user.bio),
            contentPadding: EdgeInsets.zero,
          ),
        ],
      ),
    );
  }
}
