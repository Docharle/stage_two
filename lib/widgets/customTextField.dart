import 'package:flutter/material.dart';
import 'package:stage_two/constants/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;

  final String? Function(String?)? validator;

  CustomTextFormField(
      {required this.controller, required this.labelText, this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        hintText: labelText,
        hintStyle: TextStyle(color: textColor4),
        fillColor: textColor5,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
      ),
      style: TextStyle(
          color: textColor4, fontFamily: 'Brandon Grotesque', fontSize: 14),
    );
  }
}
