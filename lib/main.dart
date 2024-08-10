import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ne_chu_show/firebase_options.dart';
import 'package:ne_chu_show/pages/home.dart';
import 'package:ne_chu_show/pages/measure.dart';
import 'package:ne_chu_show/pages/score.dart';
import 'package:ne_chu_show/pages/signing.dart';
import 'package:ne_chu_show/pages/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => const Home(),
          '/signing': (BuildContext context) => const Signing(),
          '/measure': (BuildContext context) => const Measure(),
          '/score': (BuildContext context) => const Score(),
        },
        home: const Splash());
  }
}
