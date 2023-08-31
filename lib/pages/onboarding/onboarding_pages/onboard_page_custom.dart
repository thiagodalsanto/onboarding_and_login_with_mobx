import 'package:flutter/material.dart';

class OnBoardPageCustom extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final Color backgroundColor;

  const OnBoardPageCustom({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(imagePath),
                  width: 275,
                ),
              ],
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: 325,
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 325,
              child: Center(
                child: Text(
                  description,
                  style: const TextStyle(
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
