import 'package:flutter/material.dart';

class UserForgotPasswordScreen extends StatelessWidget {
  const UserForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
        backgroundColor: Colors.grey[500],
      ),
      backgroundColor: Colors.grey[300],
      body: const Center(
        child: Text(
          'Forgot Password',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
