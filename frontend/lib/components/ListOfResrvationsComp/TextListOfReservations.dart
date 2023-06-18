import 'package:flutter/material.dart';

class TextListOfReservations extends StatelessWidget {
  const TextListOfReservations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 32, bottom: 32),
          child: Text(
            "قائمة الحجوزات",
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: 35,
              fontFamily: 'Tajawal',
            ),
          ),
        )
      ],
    );
  }
}
