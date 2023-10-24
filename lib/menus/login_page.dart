import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Login'),

    );
  }
}
