import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

part 'add_nechu_state.freezed.dart';

@freezed
class AddNechuState with _$AddNechuState {
  factory AddNechuState({
    @Default("") String category,
    XFile? video,
    VideoPlayerController? videoController,
    @Default(false) bool isUploading,
    TextEditingController? titleController,
  }) = _AddNechuState;
}
