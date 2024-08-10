import 'package:flutter/material.dart';

class Signing extends StatelessWidget {
  const Signing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'signing',
              style: TextStyle(fontSize: 20),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pushNamed('/home'),
              child: const Text('Go to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
