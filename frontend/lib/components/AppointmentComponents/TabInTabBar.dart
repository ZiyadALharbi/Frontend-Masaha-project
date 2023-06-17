import 'package:flutter/material.dart';

class Tab_In_TabBar extends StatelessWidget {
  const Tab_In_TabBar({
    super.key,
    required this.Deys,
  });
  final String Deys;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: const Color.fromARGB(0, 249, 0, 245))),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          Deys,
          style: const TextStyle(
              fontFamily: 'Tajawal',
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15),
        ),
      ),
    );
  }
}
