import 'package:mobx/mobx.dart';
part 'login_store.g.dart';

// ignore: library_private_types_in_public_api
class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  @observable
  bool rememberUser = false;

  @observable
  String registeredEmail = '';

  @observable
  String registeredPassword = '';

  @observable
  String emailFieldValue = '';

  @observable
  String passwordFieldValue = '';

  @action
  void storeUserData() {
    registeredEmail = emailFieldValue;
    registeredPassword = passwordFieldValue;
  }

  @action
  void setEmailFieldValue(String value) {
    emailFieldValue = value;
  }

  @action
  void setPasswordFieldValue(String value) {
    passwordFieldValue = value;
  }

  @action
  void setRememberUser(bool value) {
    rememberUser = value;
  }

  @computed
  bool get isEmailValid =>
      RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
          .hasMatch(emailFieldValue);

  @computed
  bool get isPasswordValid => passwordFieldValue.length > 1;

  @computed
  bool get isRegisteredUser =>
      emailFieldValue == registeredEmail &&
      passwordFieldValue == registeredPassword;

  @computed
  bool get canRegister => isEmailValid && isPasswordValid;

  @computed
  bool get canLoginIn => isRegisteredUser && isEmailValid && isPasswordValid;
}
