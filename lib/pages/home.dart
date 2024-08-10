import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ne_chu_show/features/ne_chu_list/ne_chu_list.dart';
import 'package:ne_chu_show/view_model/home/home_view_model.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(context, ref) {
    final neChus = ref.watch(homeViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('NE CHU SHOW'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            '今日の熱中賞🏆',
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
        ],
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
}
