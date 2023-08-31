// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginStore on _LoginStoreBase, Store {
  Computed<bool>? _$isEmailValidComputed;

  @override
  bool get isEmailValid =>
      (_$isEmailValidComputed ??= Computed<bool>(() => super.isEmailValid,
              name: '_LoginStoreBase.isEmailValid'))
          .value;
  Computed<bool>? _$isPasswordValidComputed;

  @override
  bool get isPasswordValid =>
      (_$isPasswordValidComputed ??= Computed<bool>(() => super.isPasswordValid,
              name: '_LoginStoreBase.isPasswordValid'))
          .value;
  Computed<bool>? _$isRegisteredUserComputed;

  @override
  bool get isRegisteredUser => (_$isRegisteredUserComputed ??= Computed<bool>(
          () => super.isRegisteredUser,
          name: '_LoginStoreBase.isRegisteredUser'))
      .value;
  Computed<bool>? _$canRegisterComputed;

  @override
  bool get canRegister =>
      (_$canRegisterComputed ??= Computed<bool>(() => super.canRegister,
              name: '_LoginStoreBase.canRegister'))
          .value;
  Computed<bool>? _$canSignInComputed;

  @override
  bool get canSignIn =>
      (_$canSignInComputed ??= Computed<bool>(() => super.canSignIn,
              name: '_LoginStoreBase.canSignIn'))
          .value;

  late final _$rememberUserAtom =
      Atom(name: '_LoginStoreBase.rememberUser', context: context);

  @override
  bool get rememberUser {
    _$rememberUserAtom.reportRead();
    return super.rememberUser;
  }

  @override
  set rememberUser(bool value) {
    _$rememberUserAtom.reportWrite(value, super.rememberUser, () {
      super.rememberUser = value;
    });
  }

  late final _$registeredEmailAtom =
      Atom(name: '_LoginStoreBase.registeredEmail', context: context);

  @override
  String get registeredEmail {
    _$registeredEmailAtom.reportRead();
    return super.registeredEmail;
  }

  @override
  set registeredEmail(String value) {
    _$registeredEmailAtom.reportWrite(value, super.registeredEmail, () {
      super.registeredEmail = value;
    });
  }

  late final _$registeredPasswordAtom =
      Atom(name: '_LoginStoreBase.registeredPassword', context: context);

  @override
  String get registeredPassword {
    _$registeredPasswordAtom.reportRead();
    return super.registeredPassword;
  }

  @override
  set registeredPassword(String value) {
    _$registeredPasswordAtom.reportWrite(value, super.registeredPassword, () {
      super.registeredPassword = value;
    });
  }

  late final _$_LoginStoreBaseActionController =
      ActionController(name: '_LoginStoreBase', context: context);

  @override
  void storeUserData() {
    final _$actionInfo = _$_LoginStoreBaseActionController.startAction(
        name: '_LoginStoreBase.storeUserData');
    try {
      return super.storeUserData();
    } finally {
      _$_LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRememberUser(bool value) {
    final _$actionInfo = _$_LoginStoreBaseActionController.startAction(
        name: '_LoginStoreBase.setRememberUser');
    try {
      return super.setRememberUser(value);
    } finally {
      _$_LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
rememberUser: ${rememberUser},
registeredEmail: ${registeredEmail},
registeredPassword: ${registeredPassword},
isEmailValid: ${isEmailValid},
isPasswordValid: ${isPasswordValid},
isRegisteredUser: ${isRegisteredUser},
canRegister: ${canRegister},
canSignIn: ${canSignIn}
    ''';
  }
}
