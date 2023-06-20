import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';

class LabelBooking extends StatelessWidget {
  const LabelBooking({
    super.key,
    required this.title,
    required this.titlesize,
  });
  final String title;
  final double titlesize;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontFamily: 'Tajawal',
          fontSize: titlesize,
          fontWeight: FontWeight.w700,
          color: darkBlue),
    );
  }
}
