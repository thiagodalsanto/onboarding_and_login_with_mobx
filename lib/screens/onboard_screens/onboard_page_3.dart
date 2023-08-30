import 'package:flutter/material.dart';

class OnBoardPage3 extends StatelessWidget {
  const OnBoardPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: const Color.fromRGBO(239, 217, 201, 1),
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
                    image: AssetImage('assets/images/chiclete.png'),
                    width: 275,
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
                    'Animate shapes to catch the attention',
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
                  'Geometric makes it very easy to animate any design object. There are animation presets that allow you to make a shape zoom, fade, wobble, shake, spin and more, with just a click of a button.',
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
