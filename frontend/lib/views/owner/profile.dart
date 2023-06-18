import 'package:flutter/material.dart';
import 'package:frontend/constants/colors.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        children: [
          Text('مرحبا فلان،',
              style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.w700,
                  fontSize: 36,
                  color: darkBlue))
        ],
      ),
    );
  }
}
