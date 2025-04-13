import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_app_mobile/app/app.dart';
import 'package:user_app_mobile/l10n/l10n.dart';
import 'package:user_app_mobile/users/users.dart';

class UsersList extends StatefulWidget {
  const UsersList({super.key});

  @override
  State<UsersList> createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<UsersBloc, UsersState>(
      builder: (context, state) {
        return RefreshIndicator.adaptive(
          onRefresh: () async {
            final future = context.read<UsersBloc>().stream.first;
            context
                .read<UsersBloc>()
                .add(const UsersEvent.load(forceRefresh: true));
            await future;
          },
          child: CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverAppBar.large(
                title: Text(context.l10n.usersAppBarTitle),
              ),
              const SliverPadding(
                padding: EdgeInsets.all(16),
                sliver: SliverToBoxAdapter(
                  child: SearchUserField(),
                ),
              ),
              if (state.status.isSuccess)
                if (state.users.isEmpty)
                  SliverFillRemaining(
                    child: Center(
                      child: Text(context.l10n.usersEmptyMessage),
                    ),
                  )
                else
                  SliverList.builder(
                    itemBuilder: (context, index) {
                      if (index >= state.users.length) {
                        return const SizedBox(
                          height: 48,
                          child: Center(
                            child: CircularProgressIndicator.adaptive(),
                          ),
                        );
                      }

                      final user = state.users.elementAt(index);
                      return ListTile(
                        title: Text(user.name),
                        subtitle: Text(user.email),
                        leading: CircleAvatar(
                          foregroundImage:
                              CachedNetworkImageProvider(user.avatar),
                          child: Icon(
                            Icons.person,
                            color: theme.colorScheme.onPrimaryContainer,
                          ),
                        ),
                        trailing: user.isMe
                            ? Text('(${context.l10n.usersYouLabel})')
                            : null,
                        onTap: () {
                          UserDetailsRoute(user.id).push<void>(context);
                        },
                      );
                    },
                    itemCount: state.hasReachedMax
                        ? state.users.length
                        : state.users.length + 1,
                  ),
              if (state.status.isFailure)
                SliverFillRemaining(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(context.l10n.usersFailureMessage),
                    ),
                  ),
                ),
              if (state.status.isLoading)
                const SliverFillRemaining(
                  child: Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) context.read<UsersBloc>().add(const UsersEvent.load());
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}
