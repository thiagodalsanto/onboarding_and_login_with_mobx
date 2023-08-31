import 'package:flutter/material.dart';

class LoginError {
  static Future<bool?> show(BuildContext context) async {
    return await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Login Error',
            style: TextStyle(
              color: Colors.deepOrange.shade700,
            ),
          ),
          content: Text(
            'Not Registered or Email/Password Incorrect.',
            style: TextStyle(
              color: Colors.deepOrange.shade700,
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
              child: Text(
                'OK',
                style: TextStyle(
                  color: Colors.deepOrange.shade700,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
