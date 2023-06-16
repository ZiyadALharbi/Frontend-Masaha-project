import 'package:flutter/material.dart';

import '../constants/colors.dart';

class TextFieldCustom extends StatelessWidget {
  const TextFieldCustom({super.key, required this.label, this.textController});

  final String label;
  final TextEditingController? textController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 313,
      height: 43,
      child: TextField(
        controller: textController,
        decoration: InputDecoration(
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
