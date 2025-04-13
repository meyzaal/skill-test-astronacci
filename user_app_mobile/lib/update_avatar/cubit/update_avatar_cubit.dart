import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:user_repository/user_repository.dart';

part 'update_avatar_state.dart';
part 'update_avatar_cubit.freezed.dart';

class UpdateAvatarCubit extends Cubit<UpdateAvatarState> {
  UpdateAvatarCubit({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(const UpdateAvatarState.initial());

  final UserRepository _userRepository;

  Future<void> updateAvatar(ImageSource source) async {
    emit(const UpdateAvatarState.loadInProgress());

    final file = await ImagePicker().pickImage(source: source);
    if (file == null) return;

    final avatar = await ImageCropper().cropImage(
      sourcePath: file.path,
      uiSettings: [
        AndroidUiSettings(
          initAspectRatio: CropAspectRatioPreset.square,
          cropStyle: CropStyle.circle,
          lockAspectRatio: true,
          hideBottomControls: true,
          toolbarColor: Colors.black,
          toolbarWidgetColor: Colors.white,
        ),
        IOSUiSettings(
          aspectRatioPresets: [CropAspectRatioPreset.original],
          cropStyle: CropStyle.circle,
        ),
      ],
    );
    if (avatar == null) return;

    try {
      await _userRepository.updateAvatar(File(avatar.path));
      emit(const UpdateAvatarState.loadSuccess());
    } catch (e) {
      emit(const UpdateAvatarState.loadFailure());
    }
  }

  Future<void> deleteAvatar() async {
    emit(const UpdateAvatarState.loadInProgress());

    try {
      await _userRepository.updateAvatar(null);
      emit(const UpdateAvatarState.loadSuccess());
    } catch (e) {
      emit(const UpdateAvatarState.loadFailure());
    }
  }
}
