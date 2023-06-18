import 'package:flutter/material.dart';
import '../constants/colors.dart';

class TextFieldCustom extends StatelessWidget {
  const TextFieldCustom(
      {super.key,
      required this.label,
      this.textController,
      this.icon,
      this.suffixText,
      this.width,
      this.height});

  final String label;
  final TextEditingController? textController;
  final Icon? icon;
  final String? suffixText;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 313,
      height: height ?? 43,
      child: TextField(
        controller: textController,
        decoration: InputDecoration(
            suffixText: suffixText,
            suffixIcon: icon,
            suffixStyle: TextStyle(
                fontFamily: 'Tajawal',
                fontSize: 8,
                fontWeight: FontWeight.w400,
                color: darkGrey),
            hintText: label,
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: darkBlue)),
            hintStyle: TextStyle(
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: darkGrey),
            labelText: label,
            labelStyle: TextStyle(
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: darkBlue),
            border:
                OutlineInputBorder(borderSide: BorderSide(color: darkGrey))),
      ),
    );
  }
}
