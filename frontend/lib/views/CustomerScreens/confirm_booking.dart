import 'package:flutter/material.dart';
import 'package:frontend/constants/colors.dart';
import 'package:rive/rive.dart';

class ConfirmBooking extends StatelessWidget {
  const ConfirmBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(120, 100, 100, 0),
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  width: 200,
                  child: RiveAnimation.asset(
                      'assets/animations/checkmark_icon.riv'),
                ),
              ],
            ),
          ),
        ));
  }
}
