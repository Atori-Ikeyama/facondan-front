import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ne_chu_show/features/videos/videos_view_model.dart';
import 'package:ne_chu_show/model/video.dart';
import 'package:ne_chu_show/repository/videos_repository.dart';

class Videos extends ConsumerWidget {
  @override
  Widget build(context, ref) {
    VideosRepository videosRepository = VideosRepository();
    return Column(
      children: [
        ref.watch(videosViewModelProvider).when(
            data: (data) => Text("data"),
            error: (_, __) {
              print(__.toString());
              return Text("error");
            },
            loading: () => Text("loading")),
        TextButton(
          child: Text("aiueo"),
          onPressed: () async {
            final test = <String, dynamic>{
              "first": "ada",
            };
            await FirebaseFirestore.instance
                .collection("test")
                .add(test)
                .then((DocumentReference doc) => print('DocumentSnapshot added with ID: ${doc.id}'));
          },
        ),
        TextButton(
          child: Text("add video"),
          onPressed: () => videosRepository.addVideo(Video(
              category: "test",
              date: DateTime.now(),
              email: "aiueo@example.com",
              kissRequired: false,
              rawStorageUrl: Uri.parse("https://example.com"),
              scoredStorageUrl: null,
              score: null,
              singleComments: null,
              templature: null)),
        )
      ],
    );
  }
}
