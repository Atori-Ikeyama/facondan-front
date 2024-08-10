import 'package:flutter/material.dart';

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
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 20),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isRegistering = !isRegistering;
                      });
                    },
                    child: isRegistering ? const Text('Already have an account?') : const Text('Create an account?'),
                  ),
                  isLoading
                      ? const CircularProgressIndicator()
                      : ElevatedButton(
                          onPressed: () {
                            _login(context);
                          },
                          child: isRegistering
                              ? const Text(
                                  'Register',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              : const Text(
                                  'Login',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                        ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _login(BuildContext context) async {
    // Show loading indicator
    // setState(() {
    //   isLoading = true;
    // });
    // User? user;
    // if (isRegistering) {
    //   user = await registerWithEmailAndPassword(emailController.text, passwordController.text);
    // } else {
    //   user = await signInWithEmailAndPassword(emailController.text, passwordController.text);
    //   debugPrint('user: $user');
    // }
    // if (user != null) {
    //   // Navigate to the next screen if login is successful
    //   if (isRegistering) {
    //     await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
    //       'email': user.email,
    //       'createdAt': FieldValue.serverTimestamp(),
    //     });
    //   }
    //   context.go('/personality_test');
    // } else {
    //   setState(() {
    //     isLoading = false;
    //   });
    //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Login failed')));
    // }
    Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);
  }

  // Future<User?> signInWithEmailAndPassword(String email, String password) async {
  //   try {
  //     final UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: email,
  //       password: password,
  //     );
  //     return userCredential.user;
  //   } catch (e) {
  //     debugPrint(e as String?);
  //     return null;
  //   }
  // }

  // Future<User?> registerWithEmailAndPassword(String email, String password) async {
  //   try {
  //     final UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //       email: email,
  //       password: password,
  //     );
  //     return userCredential.user;
  //   } catch (e) {
  //     debugPrint(e as String?);
  //     return null;
  //   }
  // }
}
