import 'package:flutter/material.dart';
import 'package:frontend/constants/spaces.dart';

import '../../constants/colors.dart';

class CustomerHome extends StatefulWidget {
  const CustomerHome({super.key});

  @override
  State<CustomerHome> createState() => _CustomerHomeState();
}

class _CustomerHomeState extends State<CustomerHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 103, 0, 0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Row(
                children: [
                  Text('مرحبا فلان،',
                      style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontWeight: FontWeight.w700,
                          fontSize: 36,
                          color: darkBlue)),
                ],
              ),
            ),
            kVSpace64,
            Row(
              children: [
                kHSpace16,
                Text("تصنيفات مساحة العمل",
                    style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: darkBlue)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
