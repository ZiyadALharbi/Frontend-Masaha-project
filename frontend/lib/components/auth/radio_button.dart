import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/spaces.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key, required this.onTypeChange});

  final Function(String) onTypeChange;

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        GestureDetector(
          onTap: () async {
            widget.onTypeChange('customer');
            value = 0;
            setState(() {});
          },
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
          onTap: () async {
            widget.onTypeChange('owner');
            value = 1;
            setState(() {});
          },
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
