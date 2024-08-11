import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ne_chu_show/features/ne_chu_card/ne_chu_card.dart';
import 'package:ne_chu_show/model/ne_chu.dart';
import 'package:video_player/video_player.dart';

class Score extends StatefulWidget {
  const Score({super.key, required this.docId});

  final String docId;

  @override
  State<Score> createState() => _ScoreState();
}

class _ScoreState extends State<Score> {
  late Stream<DocumentSnapshot<Map<String, dynamic>>> _usersStream;

  @override
  void initState() {
    super.initState();
    _usersStream = FirebaseFirestore.instance.collection('ne_chus').doc(widget.docId).snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/logo_nechushow.png', height: 40),
      ),
      body: StreamBuilder<DocumentSnapshot>(
          stream: _usersStream,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text("Loading");
            }

            final neChu = NeChu.fromFirestore(snapshot.data!);

            if (neChu.score == null || neChu.temperature == null) {
              return const Center(
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: CircularProgressIndicator(),
                ),
              );
            }

            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 20),
                    _buildScoreCard(neChu),
                    const SizedBox(height: 20),
                    Text(
                      _getScoreText(neChu.score!),
                      style: const TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      neChu.score! > neChu.temperature! ? '今日の暑さに勝利' : '熱中不足のようです',
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 50),
                    NeChuCard(
                      neChu: neChu,
                      controller: VideoPlayerController.networkUrl(neChu.rawStorageUrl),
                    ),
                    const SizedBox(height: 30),
                    _buidButtons(),
                    const SizedBox(height: 50),
                  ],
                ),
              ),
            );
          }),
    );
  }

  Widget _buildScoreCard(NeChu neChu) {
    return Container(
      height: 350,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color.fromARGB(20, 255, 18, 18),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '${neChu.score!}°C',
            style: const TextStyle(
              fontSize: 80,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 10,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(90, 255, 18, 18),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 30,
                height: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(200, 255, 18, 18),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 10,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(90, 255, 18, 18),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            '${neChu.temperature}°C',
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildScoredVideo(NeChu neChu) {
    return NeChuCard(neChu: neChu, controller: VideoPlayerController.networkUrl(neChu.rawStorageUrl));
  }

  Widget _buidButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        TextButton(
          onPressed: () {},
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Color.fromARGB(20, 255, 18, 18)),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            child: Text(
              'やめる',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.red),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            child: Text(
              '共有',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  String _getScoreText(int score) {
    if (score < 5) {
      return '真冬日❄️';
    } else if (score < 30) {
      return '普通';
    } else if (score < 35) {
      return '真夏日☀️';
    } else if (score < 40) {
      return '猛暑❤️‍🔥';
    } else {
      return '熱中賞🔥';
    }
  }
}
