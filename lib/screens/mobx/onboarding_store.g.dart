// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$OnboardingStore on _OnboardingStore, Store {
  Computed<bool>? _$isOnLastPageComputed;

  @override
  bool get isOnLastPage =>
      (_$isOnLastPageComputed ??= Computed<bool>(() => super.isOnLastPage,
              name: '_OnboardingStore.isOnLastPage'))
          .value;

  late final _$currentPageIndexAtom =
      Atom(name: '_OnboardingStore.currentPageIndex', context: context);

  @override
  int get currentPageIndex {
    _$currentPageIndexAtom.reportRead();
    return super.currentPageIndex;
  }

  @override
  set currentPageIndex(int value) {
    _$currentPageIndexAtom.reportWrite(value, super.currentPageIndex, () {
      super.currentPageIndex = value;
    });
  }

  late final _$_OnboardingStoreActionController =
      ActionController(name: '_OnboardingStore', context: context);

  @override
  void setPageIndex(int index) {
    final _$actionInfo = _$_OnboardingStoreActionController.startAction(
        name: '_OnboardingStore.setPageIndex');
    try {
      return super.setPageIndex(index);
    } finally {
      _$_OnboardingStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPageIndex: ${currentPageIndex},
isOnLastPage: ${isOnLastPage}
    ''';
  }
}
