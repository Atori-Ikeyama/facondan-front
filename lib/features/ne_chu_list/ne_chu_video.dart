import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class NeChuVideo extends StatefulWidget {
  const NeChuVideo({super.key, required this.controller});

  final VideoPlayerController controller;

  @override
  NeChuVideoState createState() => NeChuVideoState();
}

class NeChuVideoState extends State<NeChuVideo> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: AspectRatio(
        aspectRatio: widget.controller.value.aspectRatio,
        child: VideoPlayer(widget.controller),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Close'),
        ),
      ],
    );
  }
}
