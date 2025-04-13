import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:user_app_mobile/edit_profile/edit_profile.dart';
import 'package:user_app_mobile/l10n/l10n.dart';

class EditProfileForm extends StatelessWidget {
  const EditProfileForm({super.key, this.name, this.bio});

  final String? name;
  final String? bio;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocConsumer<EditProfileBloc, EditProfileState>(
      listener: (context, state) {
        if (state.status.isFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(context.l10n.editProfileFailureMessage),
              ),
            );
        }
        if (state.status.isSuccess) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(context.l10n.editProfileSuccessMessage),
              ),
            );

          context.pop(true);
        }
      },
      builder: (context, state) {
        return CustomScrollView(
          slivers: [
            SliverAppBar.large(
              leading: const CloseButton(),
              title: Text(context.l10n.editProfileAppBarTitle),
              actions: [
                TextButton(
                  onPressed: state.isValid
                      ? () {
                          context.read<EditProfileBloc>().add(
                                const EditProfileEvent.submitted(),
                              );
                        }
                      : null,
                  child: state.status.isLoading
                      ? SizedBox.square(
                          dimension: 20,
                          child: CircularProgressIndicator.adaptive(
                            valueColor: AlwaysStoppedAnimation(
                              theme.colorScheme.primary,
                            ),
                          ),
                        )
                      : Text(context.l10n.editProfileSaveButtonText),
                ),
              ],
            ),
            SliverPadding(
              padding: const EdgeInsets.all(16),
              sliver: SliverList.list(
                children: [
                  TextFormField(
                    initialValue: name,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: context.l10n.editProfileNameLabel,
                    ),
                    onChanged: (value) => context.read<EditProfileBloc>().add(
                          EditProfileEvent.nameChanged(value),
                        ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    initialValue: bio,
                    maxLines: 5,
                    keyboardType: TextInputType.multiline,
                    textInputAction: TextInputAction.newline,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: context.l10n.editProfileBioLabel,
                    ),
                    onChanged: (value) => context.read<EditProfileBloc>().add(
                          EditProfileEvent.bioChanged(value),
                        ),
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
