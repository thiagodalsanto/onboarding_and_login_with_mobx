import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final Function(String)? onChanged;

  const TextFieldCustom({
    Key? key,
    required this.hintText,
    required this.obscureText,
    this.textInputType,
    this.textInputAction,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        obscureText: obscureText,
        keyboardType: textInputType,
        textInputAction: textInputAction,
        onChanged: onChanged,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(131, 120, 113, 1),
            ),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey[500],
          ),
        ),
      ),
    );
  }
}
