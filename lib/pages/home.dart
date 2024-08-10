import 'package:flutter/material.dart';
import 'package:ne_chu_show/features/ne_chu_list/ne_chu_list.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NE CHU SHOW'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '今日の熱中賞🏆',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            NeChuList(),
            SizedBox(height: 20),
            Text(
              '過去の自分の熱中',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            NeChuList(),
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
}
