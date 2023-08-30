import 'package:flutter/material.dart';

class UserRegister extends StatelessWidget {
  const UserRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Registered'),
        backgroundColor: Colors.grey[500],
      ),
      backgroundColor: Colors.grey[300],
      body: const Center(
        child: Text(
          'User Registered',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
