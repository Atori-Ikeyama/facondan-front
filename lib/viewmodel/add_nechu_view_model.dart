import 'dart:io';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ne_chu_show/features/add_nechu/add_nechu_state.dart';
import 'package:ne_chu_show/features/user/user_provider.dart';
import 'package:ne_chu_show/model/pre_post_nechu.dart';
import 'package:ne_chu_show/repository/ne_chu_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:video_player/video_player.dart';
import 'package:latlong2/latlong.dart';

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
    debugPrint("category: $category");
    state = state.copyWith(category: category);
  }

  Future<void> changeVideo(XFile video) async {
    await setVideo(video);
    state = state.copyWith(video: video);
  }

  Future<void> setVideo(XFile xfile) async {
    print(xfile.path);

    var controller = VideoPlayerController.file(
      File(xfile.path),
    );

    await controller.initialize();

    controller.setVolume(0);

    state = state.copyWith(videoController: controller);
    state.videoController!.play();
  }

  Future<void> uploadNechu() async {
    state = state.copyWith(isUploading: true);

    String videoPath;
    DateTime now = DateTime.now();
    videoPath = "${now.year}-${now.month}-${now.day}-${now.hour}-${now.minute}-${now.second}_${ref.read(userProviderProvider).email}.mp4";

    LatLng gps = await getGps();

    PrePostNechu nechu = PrePostNechu(
        category: state.category,
        date: now,
        email: ref.read(userProviderProvider).email,
        filePath: videoPath,
        xfile_video: state.video!,
        lat: gps.latitude,
        lng: gps.longitude);
    await ref.read(neChuRepositoryProvider.notifier).addVideo(nechu);
    state = state.copyWith(isUploading: false);
  }

  Future<LatLng> getGps() async {
    Position current = await Geolocator.getCurrentPosition();
    return LatLng(current.latitude, current.longitude);
  }
}
