import 'package:flutter/material.dart';
import 'package:mobx_and_onboarding/components/my_button.dart';
import 'package:mobx_and_onboarding/components/my_checkbox.dart';
import 'package:mobx_and_onboarding/components/my_textfield.dart';
import 'package:mobx_and_onboarding/user_logged.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool rememberUser = false;

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(height: 50),
              Text(
                'Welcome back you\'ve been missed',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 25),

              // email
              MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
              ),

              const SizedBox(height: 25),

              // password
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    MyCheckbox(
                      rememberUser: rememberUser,
                      onChanged: (value) {
                        rememberUser = value;
                      },
                    ),
                    Text(
                      'Remember Me',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const Spacer(),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: MyButton(
                  onTap: () {
                    // Aqui você navega para a nova página após o clique no botão
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UserLoggedPage(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
