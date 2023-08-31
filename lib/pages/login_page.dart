import 'package:flutter/material.dart';
import 'package:mobx_and_onboarding/components/buttons/sign_in_button.dart';
import 'package:mobx_and_onboarding/components/remember_me_checkbox.dart';
import 'package:mobx_and_onboarding/components/textfield_custom.dart';
import 'package:mobx_and_onboarding/pages/login_mobx/login_store.dart';
import 'package:mobx_and_onboarding/pages/user_pages/user_logged_page.dart';
import 'package:mobx_and_onboarding/components/registration_notification.dart';
import 'user_pages/user_forgot_passoword_page.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  bool rememberUser = false;

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    final LoginStore loginStore =
        LoginStore(emailController, passwordController);

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
              TextFieldCustom(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
                textInputType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 25),
              TextFieldCustom(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
                textInputType: TextInputType.text,
                textInputAction: TextInputAction.done,
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    RememberMeCheckBox(
                      rememberUser: loginStore.rememberUser,
                      onChanged: loginStore.setRememberUser,
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
                                    const UserForgotPasswordPage(),
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
                child: SignInButton(
                  onTap: () {
                    if (loginStore.canSignIn) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const UserLoggedPage(),
                        ),
                      );
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: TextButton(
                  onPressed: () async {
                    if (loginStore.canRegister) {
                      loginStore.storeUserData();
                      await RegistrationNotification.show(context);
                    }
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
