import 'package:flutter/material.dart';
import 'package:ne_chu_show/features/ne_chu_card/ne_chu_card.dart';
import 'package:ne_chu_show/model/ne_chu.dart';
import 'package:video_player/video_player.dart';

class NeChuList extends StatefulWidget {
  const NeChuList({super.key, required this.neChus});

  final List<NeChu> neChus;

  @override
  State<NeChuList> createState() => _NeChuListState();
}

class _NeChuListState extends State<NeChuList> {
  final List<VideoPlayerController> controllers = [];

  @override
  void dispose() {
    for (final controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 400),
        child: CarouselView(
          backgroundColor: Colors.white70,
          itemExtent: 200,
          onTap: (value) async {
            controllers[value].play();
            await showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  contentPadding: EdgeInsets.zero,
                  content: AspectRatio(
                    aspectRatio: controllers[value].value.aspectRatio,
                    child: VideoPlayer(controllers[value]),
                  ),
                );
              },
            );

            controllers[value].pause();
          },
          children: _buildNeChuCards(),
        ),
      ),
    );
  }

  List<Widget> _buildNeChuCards() {
    final List<Widget> neChuCards = [];

    for (final neChu in widget.neChus) {
      final VideoPlayerController controller = VideoPlayerController.networkUrl(neChu.rawStorageUrl);
      controllers.add(controller);
      neChuCards.add(NeChuCard(neChu: neChu, controller: controller));
    }

    debugPrint('controllers: $controllers');

    return neChuCards;
  }
}
