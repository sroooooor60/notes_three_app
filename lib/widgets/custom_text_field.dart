import 'package:flutter/material.dart';
import 'package:note_three_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, this.MaxLines, required this.hintText, this.onSaved});

  final int? MaxLines;
  final String hintText;
  final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Required Field';
        }
      },
      onSaved: onSaved,
      maxLines: MaxLines,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: kPrimaryColor),
        border: outLineBorderMethod(kPrimaryColor),
        enabledBorder: outLineBorderMethod(kPrimaryColor),
        focusedBorder: outLineBorderMethod(Colors.white),
      ),
    );
  }

  OutlineInputBorder outLineBorderMethod([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: color,
      ),
    );
  }
}
