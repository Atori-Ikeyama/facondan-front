import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ne_chu_show/features/user/user_provider.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool isFinished = false;
  @override
  Widget build(BuildContext context) {
    if (isFinished) {
      Navigator.of(context).pushNamed('/home');
    }
    return Consumer(builder: (context, ref, _) {
      debugPrint(ref.watch(userProviderProvider).email);
      if (ref.watch(userProviderProvider).email.isNotEmpty) {
        WidgetsBinding.instance.addPostFrameCallback(
          (timeStamp) => Navigator.of(context).pushNamedAndRemoveUntil(
            '/home',
            (Route<dynamic> route) => false,
          ),
        );
      } else {
        WidgetsBinding.instance.addPostFrameCallback(
          (timestamp) => Navigator.of(context).pushNamedAndRemoveUntil(
            '/signing',
            (Route<dynamic> route) => false,
          ),
        );
      }
      return const CircularProgressIndicator();
    });
  }
}
