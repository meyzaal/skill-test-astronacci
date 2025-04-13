import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:user_app_mobile/l10n/l10n.dart';
import 'package:user_app_mobile/update_avatar/update_avatar.dart';

class UpdateAvatarButton extends StatelessWidget {
  const UpdateAvatarButton({
    required this.onAvatarUpdated,
    super.key,
  });

  final VoidCallback? onAvatarUpdated;

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdateAvatarCubit, UpdateAvatarState>(
      listener: (context, state) {
        if (state.isLoadSuccess) {
          onAvatarUpdated?.call();
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(context.l10n.updateAvatarSuccessMessage),
              ),
            );
        } else if (state.isLoadFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(context.l10n.updateAvatarFailureMessage)),
            );
        }
      },
      child: IconButton.filled(
        onPressed: () async {
          final action = await showModalBottomSheet<Object>(
            context: context,
            useRootNavigator: true,
            showDragHandle: true,
            builder: (context) => const ImageSourceModal(),
          );
          if (action == null) return;
          if (!context.mounted) return;

          if (action == 'delete') {
            await context.read<UpdateAvatarCubit>().deleteAvatar();
          } else if (action is ImageSource) {
            await context.read<UpdateAvatarCubit>().updateAvatar(action);
          }
        },
        icon: const Icon(Icons.edit),
      ),
    );
  }
}
