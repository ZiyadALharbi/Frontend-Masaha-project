import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.buttonTitle,
      required this.textSize,
      this.fontWeight});

  final String buttonTitle;
  final double textSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      buttonTitle,
      style: TextStyle(
          fontFamily: 'Tajawal',
          fontWeight: fontWeight ?? FontWeight.w700,
          fontSize: textSize,
          color: white),
    );
  }
}
