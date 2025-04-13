import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:user_app_mobile/l10n/l10n.dart';

class ImageSourceModal extends StatelessWidget {
  const ImageSourceModal({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListTile(
          title: Text(context.l10n.updateAvatarTitle),
          titleTextStyle: theme.textTheme.titleLarge,
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: OverflowBar(
            children: [
              IconButton.outlined(
                onPressed: () {
                  context.pop(ImageSource.camera);
                },
                icon: const Icon(Icons.camera),
              ),
              IconButton.outlined(
                onPressed: () {
                  context.pop(ImageSource.gallery);
                },
                icon: const Icon(Icons.photo),
              ),
              IconButton.outlined(
                onPressed: () {
                  context.pop('delete');
                },
                icon: const Icon(Icons.delete),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
