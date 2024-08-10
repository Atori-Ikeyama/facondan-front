import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:ne_chu_show/features/user/user_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool isFinished = false;
  bool initLock = false;
  @override
  Widget build(BuildContext context) {
    init();
    if (isFinished) {
      WidgetsBinding.instance.addPostFrameCallback((timestamp) => Navigator.of(context).pushNamed('/home'));
    } else {}
    return const CircularProgressIndicator();
  }

  Future<void> init() async {
    if (!initLock) {
      Map<Permission, PermissionStatus> status = await [
        Permission.location,
      ].request();

      setState(() => isFinished = true);
      await Geolocator.requestPermission();
    }
    initLock = true;
  }
}
