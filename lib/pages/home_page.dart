import 'package:firebasesample/servise/auth_service.dart';
import 'package:firebasesample/sig/sign_in.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            AuthService.signOutUser().then((value) => {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)  => const SignInPage()))
            });
          },
          child: Text("Log out"),
        ),
      ),
    );
  }
}
