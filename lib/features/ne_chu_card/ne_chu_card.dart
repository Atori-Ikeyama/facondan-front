import 'package:flutter/material.dart';
import 'package:ne_chu_show/model/ne_chu.dart';
import 'package:video_player/video_player.dart';

class NeChuCard extends StatefulWidget {
  const NeChuCard({
    super.key,
    required this.neChu,
    required this.controller,
  });

  final NeChu neChu;
  final VideoPlayerController controller;

  @override
  NeChuCardState createState() => NeChuCardState();
}

class NeChuCardState extends State<NeChuCard> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    debugPrint('rawStorageUrl: ${widget.neChu.rawStorageUrl}');
    _initVideoPlayer();
  }

  void _initVideoPlayer() async {
    await widget.controller.initialize();
    _isLoading = false;
    setState(() {});
  }

  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }

  // void _play() {
  //   debugPrint('play');
  //   widget.controller.play();
  // }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    return Center(
      child: AspectRatio(
        aspectRatio: widget.controller.value.aspectRatio,
        child: VideoPlayer(widget.controller),
      ),
    );
  }
}
