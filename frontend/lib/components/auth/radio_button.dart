import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key, required this.text});
  final String text;

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 142,
      height: 60,
      decoration: BoxDecoration(border: Border.all(color: darkBlue)),
      child: Center(
        child: Text(widget.text,
            style: TextStyle(
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: black)),
      ),
    );
  }
}
