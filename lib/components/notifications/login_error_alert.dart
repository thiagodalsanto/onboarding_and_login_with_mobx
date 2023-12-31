import 'package:flutter/material.dart';

class LoginErrorAlert {
  static Future<bool?> show(BuildContext context) async {
    return await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            'Login Error',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          content: const Text(
            'Not Registered or Email/Password Incorrect.\n\nType a Valid Email and Password and Click on \'Register Now\' first.',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.red.shade400,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: const Text(
                'OK',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
