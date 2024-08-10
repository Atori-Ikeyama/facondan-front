import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ne_chu_show/features/user/user_provider.dart';
import 'package:ne_chu_show/model/user.dart';

class Signing extends StatefulWidget {
  const Signing({super.key});

  @override
  State<Signing> createState() => _SigninState();
}

class _SigninState extends State<Signing> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isLoading = false;
  bool isRegistering = true;
  String errorText = '';

  @override
  void initState() {
    // FirebaseAuth.instance.authStateChanges().listen((User? user) {
    //   if (user != null) {
    //     debugPrint('User is already logged in');
    //     context.go('/personality_test');
    //   }
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'NE CHU SHOW',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                errorText,
                style: const TextStyle(color: Colors.red),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  'assets/branding_guideline_sample_nt_rd_lg.svg',
                  width: 50,
                  height: 50,
                ),
                onPressed: () => _login(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  final List<String> _googleSignInScopes = <String>[
    'email',
  ];
  void _login(BuildContext context) async {
    final googleSignIn = GoogleSignIn(scopes: _googleSignInScopes);
    GoogleSignInAccount? googleSignInAccount;
    try {
      googleSignInAccount = await googleSignIn.signIn();
    } catch (e) {
      errorText = e.toString();
    }

    if (googleSignInAccount == null) {
    } else {
      // ignore: use_build_context_synchronously
      ProviderScope.containerOf(context)
          .read(userProviderProvider.notifier)
          .change(User(email: googleSignInAccount.email));
      debugPrint("logined${googleSignInAccount.email}");
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);
    }
  }
}
