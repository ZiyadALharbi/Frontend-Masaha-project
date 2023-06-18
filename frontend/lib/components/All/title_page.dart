import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontFamily: 'Tajawal',
          fontWeight: FontWeight.w700,
          fontSize: 20,
          color: black),
    );
  }
}
