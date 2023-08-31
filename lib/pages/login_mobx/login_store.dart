import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'login_store.g.dart';

// ignore: library_private_types_in_public_api
class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  _LoginStoreBase(this.emailController, this.passwordController);

  @observable
  bool rememberUser = false;

  @observable
  String registeredEmail = '';

  @observable
  String registeredPassword = '';

  @action
  void storeUserData() {
    registeredEmail = emailController.text;
    registeredPassword = passwordController.text;
  }

  @action
  void setRememberUser(bool value) {
    rememberUser = value;
  }

  @computed
  bool get isEmailValid =>
      RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
          .hasMatch(emailController.text);

  @computed
  bool get isPasswordValid => passwordController.text.length > 1;

  @computed
  bool get isRegisteredUser {
    bool isRes = emailController.text == registeredEmail &&
        passwordController.text == registeredPassword;
    return isRes;
  }

  @computed
  bool get canRegister => isEmailValid && isPasswordValid;

  @computed
  bool get canSignIn => isRegisteredUser && isEmailValid && isPasswordValid;

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
  }
}
