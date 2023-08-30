import 'package:flutter/material.dart';
import 'package:mobx_and_onboarding/components/my_button.dart';
import 'package:mobx_and_onboarding/components/my_checkbox.dart';
import 'package:mobx_and_onboarding/components/my_textfield.dart';
import 'package:mobx_and_onboarding/screens/user_screens/user_logged_screen.dart';
import 'package:mobx_and_onboarding/screens/user_screens/user_register_screen.dart';

import 'user_screens/user_forgot_passoword_screen.dart';

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
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(237, 237, 233, 1),
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
                  color: Colors.grey.shade600,
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
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const UserForgotPasswordScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Colors.grey[600],
                            ),
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
                        builder: (context) => const UserLoggedScreen(),
                      ),
                    );
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UserRegister(),
                      ),
                    );
                  },
                  child: Text(
                    'Register Now',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
