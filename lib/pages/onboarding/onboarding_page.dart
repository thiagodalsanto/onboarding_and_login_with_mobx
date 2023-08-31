import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_and_onboarding/pages/onboarding/onboarding_pages/onboard_page_custom.dart';
import '../../components/buttons/next_done_button.dart';
import '../../components/buttons/skip_button.dart';
import '../../components/indicators/page_indicator.dart';
import '../login/login_page.dart';
import 'onboarding_mobx/onboarding_store.dart';

class OnBoardingPage extends StatelessWidget {
  final OnboardingStore store = OnboardingStore();

  final PageController _controller = PageController();
  final buttonWidth = 95.0;
  final buttonHeight = 50.0;

  OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              store.setPageIndex(index);
            },
            children: const [
              OnBoardPageCustom(
                imagePath: 'assets/images/desfoque.png',
                title: 'Use shapes to decorate your designs',
                description:
                    'Decorate your design products with relevant shapes. Use basic geometric shapes like squares, circles or more complex shapes such as hearts, stars, bubbles to draw attention to your design segment!',
                backgroundColor: Color.fromRGBO(215, 206, 255, 1),
              ),
              OnBoardPageCustom(
                imagePath: 'assets/images/quebrado.png',
                title: 'Combine shapes with other objects',
                description:
                    'Use arrows, lines, and illustrations to make unique visuals every time. Shapes may look simplistic and even basic, but they\'re a great addition to your designs. Don\'t get carries away, though! Too many shapes can overcomplicate your design.',
                backgroundColor: Color.fromARGB(255, 240, 232, 197),
              ),
              OnBoardPageCustom(
                imagePath: 'assets/images/chiclete.png',
                title: 'Animate shapes to catch the attention',
                description:
                    'Geometric makes it very easy to animate any design object. There are animation presets that allow you to make a shape zoom, fade, wobble, shake, spin and more, with just a click of a button.',
                backgroundColor: Color.fromRGBO(239, 217, 201, 1),
              ),
            ],
          ),

          // Container do indicador de página
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              PageIndicator(controller: _controller, pageCount: 3),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SkipButton(
                      buttonWidth: buttonWidth,
                      buttonHeight: buttonHeight,
                      onPressed: () => _controller.jumpToPage(2)),
                  Observer(
                    builder: (context) {
                      return NextDoneButton(
                        buttonWidth: buttonWidth,
                        buttonHeight: buttonHeight,
                        isLastPage: store.isOnLastPage,
                        onNext: () {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        onDone: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return LoginPage();
                            }),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
