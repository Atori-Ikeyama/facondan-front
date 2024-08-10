import 'package:flutter/material.dart';
import 'package:ne_chu_show/model/video.dart';
import 'package:ne_chu_show/repository/videos_repository.dart';

class TestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    VideosRepository videosRepository = VideosRepository();
    return FutureBuilder(
        future: videosRepository.getAllVideos(),
        builder: (context, snapshot) {
          if (snapshot.hasData)
            return Text(snapshot.data.toString());
          else
            return Text("Loading...");
        });
  }
}
