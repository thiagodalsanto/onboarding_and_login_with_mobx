import 'package:flutter/material.dart';

class NextDoneButton extends StatelessWidget {
  final double buttonWidth;
  final double buttonHeight;
  final bool isLastPage;
  final VoidCallback onNext;
  final VoidCallback onDone;

  const NextDoneButton({
    super.key,
    required this.buttonWidth,
    required this.buttonHeight,
    required this.isLastPage,
    required this.onNext,
    required this.onDone,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLastPage ? onDone : onNext,
      child: Container(
        width: buttonWidth,
        height: buttonHeight,
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Center(
          child: Text(
            isLastPage ? 'Done' : 'Next',
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
