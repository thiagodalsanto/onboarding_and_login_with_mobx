import 'package:flutter/material.dart';

class UserLoggedPage extends StatelessWidget {
  const UserLoggedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Logged'),
        backgroundColor: Colors.grey[500],
      ),
      backgroundColor: Colors.grey[300],
      body: const Center(
        child: Text(
          'User Logged!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
