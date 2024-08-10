import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ne_chu_show/features/ne_chu_list/ne_chu_list.dart';
import 'package:ne_chu_show/model/ne_chu.dart';
import 'package:ne_chu_show/view_model/home/home_view_model.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(context, ref) {
    final neChus = ref.watch(homeViewModelProvider);
    final dailyNeChus = ref.watch(dailyNeChusProvider);
    final sportsNeChus = ref.watch(sportsNeChusProvider);
    final gameNeChus = ref.watch(gameNeChusProvider);
    final loveNeChus = ref.watch(loveNeChusProvider);
    final List<List<NeChu>> providers = [
      dailyNeChus,
      sportsNeChus,
      gameNeChus,
      loveNeChus,
    ];

    final titles = [
      '日常の熱中賞',
      'スポーツの熱中賞',
      'ゲームの熱中賞',
      '恋の熱中賞',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/logo_nechushow.png', height: 40),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 10),
            const Text(
              '今日の熱中賞',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            neChus.when<Widget>(
              data: (neChus) {
                return NeChuList(neChus: neChus);
              },
              error: (error, _) {
                debugPrint(error.toString());
                return const Text('エラーが発生しました');
              },
              loading: () {
                return const CircularProgressIndicator();
              },
            ),
            // const SizedBox(height: 10),
            ..._buildNeChuList(providers, titles),
          ],
        ),
      ),
      floatingActionButton: IconButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/measure');
        },
        icon: const Icon(
          Icons.add_circle_outline,
          size: 50,
          weight: 10,
          color: Color(0xFFFF1212),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  List<Widget> _buildNeChuList(List<List<NeChu>> providers, List<String> titles) {
    final neChuList = <Widget>[];
    for (var i = 0; i < providers.length; i++) {
      if (providers[i].isEmpty) {
        continue;
      }
      neChuList.add(
        Column(
          children: <Widget>[
            const SizedBox(height: 10),
            Text(
              titles[i],
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            NeChuList(neChus: providers[i]),
          ],
        ),
      );
    }
    return neChuList;
  }
}
