import 'package:flutter/material.dart';
import 'package:frontend/constants/colors.dart';
import 'package:frontend/constants/spaces.dart';

enum UserType { owner, customer }

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: () => setState(() => value = 0),
          child: Container(
            decoration: BoxDecoration(
                color: value == 0 ? lightBlue : white,
                border: Border.all(color: value == 0 ? darkBlue : darkGrey)),
            height: 60,
            width: 142,
            child: Center(
              child: Text('عميل',
                  style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: value == 0 ? darkBlue : black)),
            ),
          ),
        ),
        kHSpace16,
        GestureDetector(
          onTap: () => setState(() => value = 1),
          child: Container(
            decoration: BoxDecoration(
                color: value == 1 ? lightBlue : white,
                border: Border.all(color: value == 1 ? darkBlue : darkGrey)),
            height: 60,
            width: 142,
            child: Center(
              child: Text('مالك',
                  style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: value == 1 ? darkBlue : black)),
            ),
          ),
        ),
      ],
    );
  }
}
