import 'package:flutter/material.dart';

class RegistrationSuccessNotification {
  static Future<bool?> show(BuildContext context) async {
    return await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Registration',
            style: TextStyle(
              color: Colors.teal.shade900,
            ),
          ),
          content: Text(
            'You have been registered!',
            style: TextStyle(
              color: Colors.teal.shade900,
            ),
          ),
          backgroundColor: Colors.green.shade300,
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
                  color: Colors.teal.shade900,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
