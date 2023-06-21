// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AppointmentsText extends StatelessWidget {
  const AppointmentsText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Text(
            "الحجوزات",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontFamily: 'Tajawal',
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
