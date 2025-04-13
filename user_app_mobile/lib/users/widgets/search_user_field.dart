import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_app_mobile/l10n/l10n.dart';
import 'package:user_app_mobile/users/users.dart';

class SearchUserField extends StatefulWidget {
  const SearchUserField({super.key});

  @override
  State<SearchUserField> createState() => _SearchUserFieldState();
}

class _SearchUserFieldState extends State<SearchUserField> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        hintText: context.l10n.usersSearchHint,
        prefixIcon: const Icon(Icons.search),
        suffixIcon: IconButton(
          onPressed: () {
            _controller.clear();
            FocusScope.of(context).unfocus();
            context
                .read<UsersBloc>()
                .add(const UsersEvent.load(forceRefresh: true));
          },
          icon: const Icon(Icons.close),
        ),
        border: const OutlineInputBorder(),
      ),
      onChanged: (query) {
        context.read<UsersBloc>().add(UsersEvent.search(query));
      },
      textInputAction: TextInputAction.search,
    );
  }
}
