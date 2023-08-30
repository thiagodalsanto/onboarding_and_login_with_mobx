import 'package:mobx/mobx.dart';

part 'onboarding_store.g.dart';

// ignore: library_private_types_in_public_api
class OnboardingStore = _OnboardingStore with _$OnboardingStore;

abstract class _OnboardingStore with Store {
  @observable
  int currentPageIndex = 0;

  @computed
  bool get isOnLastPage => currentPageIndex == 2;

  @action
  void setPageIndex(int index) {
    currentPageIndex = index;
  }
}
