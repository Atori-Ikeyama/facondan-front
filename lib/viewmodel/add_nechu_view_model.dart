import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:ne_chu_show/features/add_nechu/add_nechu_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:video_player/video_player.dart';

part 'add_nechu_view_model.g.dart';

@riverpod
class AddNechuViewModel extends _$AddNechuViewModel {
  @override
  AddNechuState build() {
    return AddNechuState();
  }

  void changeTitle(String title) {
    state = state.copyWith(title: title);
  }

  void changeCategory(String category) {
    state = state.copyWith(category: category);
  }

  void changeVideo(XFile video) {
    setVideo(video);
    state = state.copyWith(video: video);
  }

  void setVideo(XFile xfile) async {
    print(xfile.path);

    state.videoController!.setVolume(0);
    var controller = VideoPlayerController.file(
      File(xfile.path),
    );

    await controller.initialize();
    state = state.copyWith(videoController: controller);
    state.videoController!.play();
  }
}
