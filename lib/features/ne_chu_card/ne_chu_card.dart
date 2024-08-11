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
  Future<void> _initializeVideoPlayerFuture() async {
    if (widget.controller.value.isInitialized) {
      return;
    }
    await widget.controller.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
        future: _initializeVideoPlayerFuture(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () async {
                    if (widget.controller.value.isPlaying) {
                      widget.controller.pause();
                    } else {
                      widget.controller.play();
                    }
                  },
                  child: SizedBox(
                    width: 200,
                    child: AspectRatio(
                      aspectRatio: widget.controller.value.aspectRatio,
                      child: VideoPlayer(widget.controller),
                    ),
                  ),
                ),
                Text(
                  widget.neChu.title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '#${matchCategoryJapaneses(widget.neChu.category)}',
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        });
  }

  String matchCategoryJapaneses(String category) {
    switch (category) {
      case 'daily':
        return '日常';
      case 'sports':
        return 'スポーツ';
      case 'game':
        return 'ゲーム';
      case 'love':
        return '恋愛';
      default:
        return '';
    }
  }
}
