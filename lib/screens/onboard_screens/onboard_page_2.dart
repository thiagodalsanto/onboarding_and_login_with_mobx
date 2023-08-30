import 'package:flutter/material.dart';

class OnBoardPage2 extends StatelessWidget {
  const OnBoardPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: const Color.fromARGB(255, 240, 232, 197),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 44,
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/images/quebrado.png'),
                    width: 285,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 36,
            ),
            SizedBox(
              child: SizedBox(
                width: 325,
                child: Center(
                  child: Text(
                    'Combine shapes with other objects',
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
                  'Use arrows, lines, and illustrations to make unique visuals every time. Shapes may look simplistic and even basic, but they\'re a great addition to your designs. Don\'t get carries away, though! Too many shapes can overcomplicate your design.',
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
