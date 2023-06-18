import 'package:flutter/material.dart';

class TextArchives extends StatelessWidget {
  const TextArchives({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 32, bottom: 4),
          child: Text(
            "قائمة المحفوظات",
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
