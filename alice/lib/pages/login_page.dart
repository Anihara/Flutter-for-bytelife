import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text("Loging In",style: TextStyle(
          fontSize: 35,
          color: Colors.orange,
          fontWeight: FontWeight.bold,
        ),
        textScaleFactor: 1.5,
        ),
      ),
    );
  }
}