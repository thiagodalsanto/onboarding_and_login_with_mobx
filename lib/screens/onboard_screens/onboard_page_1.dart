import 'package:flutter/material.dart';

class OnBoardPage1 extends StatelessWidget {
  const OnBoardPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: const Color.fromRGBO(215, 206, 255, 1),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 32,
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/images/desfoque.png'),
                    width: 265,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            SizedBox(
              child: SizedBox(
                width: 325,
                child: Center(
                  child: Text(
                    'Use shapes to decorate your designs',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 325,
              child: Center(
                child: Text(
                  'Decorate your design products with relevant shapes. Use basic geometric shapes like squares, circles or more complex shapes such as hearts, stars, bubbles to draw attention to your design segment!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}