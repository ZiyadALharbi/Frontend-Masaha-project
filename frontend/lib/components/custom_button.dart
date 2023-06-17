import 'package:flutter/material.dart';
import '../constants/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.buttonTitle, required this.textSize});

  final String buttonTitle;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      buttonTitle,
      style: TextStyle(
          fontFamily: 'Tajawal',
          fontWeight: FontWeight.w700,
          fontSize: textSize,
          color: white),
    );
  }
}