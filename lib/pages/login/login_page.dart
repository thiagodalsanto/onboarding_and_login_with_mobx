import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_and_onboarding/components/buttons/login_in_button.dart';
import 'package:mobx_and_onboarding/components/notifications/login_error_alert.dart';
import 'package:mobx_and_onboarding/components/checkboxes/remember_me_checkbox.dart';
import 'package:mobx_and_onboarding/components/textfields/textfield_custom.dart';
import 'package:mobx_and_onboarding/pages/login/user_screens/user_logged_screen.dart';
import 'package:mobx_and_onboarding/components/notifications/registration_notification.dart';
import 'login_mobx/login_store.dart';
import 'user_screens/user_forgot_passoword_screen.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  bool rememberUser = false;

  @override
  Widget build(BuildContext context) {
    final LoginStore loginStore = LoginStore();

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
                hintText: 'Email',
                obscureText: false,
                textInputType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                onChanged: loginStore.setEmailFieldValue,
              ),
              const SizedBox(height: 25),
              TextFieldCustom(
                hintText: 'Password',
                obscureText: true,
                textInputType: TextInputType.text,
                textInputAction: TextInputAction.done,
                onChanged: loginStore.setPasswordFieldValue,
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
              Observer(
                builder: (
                  context,
                ) {
                  return Visibility(
                    visible: loginStore.isEmailValid,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: LoginInButton(
                        onTap: () {
                          if (loginStore.canLoginIn) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const UserLoggedScreen(),
                              ),
                            );
                          } else {
                            LoginErrorAlert.show(context);
                          }
                        },
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: TextButton(
                  onPressed: () async {
                    if (loginStore.canRegister) {
                      loginStore.storeUserData();
                      await RegistrationSuccessNotification.show(context);
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
