import 'package:flutter/material.dart';

class MyCheckbox extends StatefulWidget {
  final bool rememberUser;
  final ValueChanged<bool> onChanged;

  const MyCheckbox({
    Key? key,
    required this.rememberUser,
    required this.onChanged,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyCheckboxState createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  late bool _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = widget.rememberUser;
  }

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: _isChecked,
      onChanged: (value) {
        setState(() {
          _isChecked = value!;
          widget.onChanged(_isChecked);
        });
      },
    );
  }
}
