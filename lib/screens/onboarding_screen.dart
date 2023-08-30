import 'package:flutter/material.dart';
import 'package:mobx_and_onboarding/screens/onboard_screens/onboard_page_1.dart';
import 'package:mobx_and_onboarding/screens/onboard_screens/onboard_page_2.dart';
import 'package:mobx_and_onboarding/screens/onboard_screens/onboard_page_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'login_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;
  final buttonWidth = 95.0;
  final buttonHeight = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              OnBoardPage1(),
              OnBoardPage2(),
              OnBoardPage3(),
            ],
          ),

          // Container do indicador de página
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Indicador de página
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    axisDirection: Axis.horizontal,
                    effect: const ExpandingDotsEffect(
                        spacing: 8.0,
                        radius: 4.0,
                        dotWidth: 18.0,
                        dotHeight: 8.0,
                        paintStyle: PaintingStyle.fill,
                        strokeWidth: 1.5,
                        dotColor: Color.fromRGBO(119, 119, 129, 1),
                        activeDotColor: Color.fromRGBO(32, 35, 51, 1)),
                  ),
                ],
              ),

              // Espaço entre as duas Rows
              const SizedBox(height: 32),

              // Row para os botões Skip e Next/Done
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Botão Skip
                  GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: Container(
                      width: buttonWidth,
                      height: buttonHeight,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: const Center(
                        child: Text(
                          'Skip',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Botão Next ou Done
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return LoginPage();
                            }));
                          },
                          child: Container(
                            width: buttonWidth,
                            height: buttonHeight,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: const Center(
                              child: Text(
                                'Done',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn,
                            );
                          },
                          child: Container(
                            width: buttonWidth,
                            height: buttonHeight,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: const Center(
                              child: Text(
                                'Next',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
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
