import 'package:flutter/material.dart';

class Measure extends StatelessWidget {
  const Measure({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Measure'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Your score is',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '40',
              style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
