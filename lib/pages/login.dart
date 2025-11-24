import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homepage.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue[300],
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 40),
               shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
            ),
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (context) => const Homepage(),
              ),
              );
             },
            child: Text('Login'),
          )
        )
      );
  }
}