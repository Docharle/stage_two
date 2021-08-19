import 'package:flutter/material.dart';
import 'package:stage_two/constants/colors.dart';

class CustomButton extends StatelessWidget {
  final Function() onTap;
  final String text;

  CustomButton({
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50,
          width: 300,
          child: Center(
            child: Text(
              text,
              style: TextStyle(color: textColor3, fontSize: 20),
            ),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: appBarColor),
        ));
  }
}
