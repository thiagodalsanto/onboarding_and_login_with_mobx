import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  final PageController controller;
  final int pageCount;

  const PageIndicator({
    super.key,
    required this.controller,
    required this.pageCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SmoothPageIndicator(
          controller: controller,
          count: pageCount,
          axisDirection: Axis.horizontal,
          effect: const ExpandingDotsEffect(
            spacing: 8.0,
            radius: 4.0,
            dotWidth: 18.0,
            dotHeight: 8.0,
            paintStyle: PaintingStyle.fill,
            strokeWidth: 1.5,
            dotColor: Color.fromRGBO(119, 119, 129, 1),
            activeDotColor: Color.fromRGBO(32, 35, 51, 1),
          ),
        ),
      ],
    );
  }
}
