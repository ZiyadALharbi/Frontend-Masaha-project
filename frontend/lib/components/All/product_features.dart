import 'package:flutter/material.dart';
import 'package:frontend/constants/spaces.dart';

import '../../constants/colors.dart';

class Features extends StatelessWidget {
  const Features({
    super.key,
    required this.feature1Name,
    required this.feature2Name,
    required this.feature3Name,
    required this.feature4Name,
    required this.feature5Name,
    required this.feature6Name,
  });
  final String feature1Name;
  final String feature2Name;
  final String feature3Name;
  final String feature4Name;
  final String feature5Name;
  final String feature6Name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.circle_rounded,
                  color: orange,
                ),
                kHSpace8,
                Text(
                  feature1Name,
                  style: const TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            kVSpace16,
            Row(
              children: [
                Icon(
                  Icons.circle_rounded,
                  color: orange,
                ),
                kHSpace8,
                Text(
                  feature2Name,
                  style: const TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            kVSpace16,
            Row(
              children: [
                Icon(
                  Icons.circle_rounded,
                  color: orange,
                ),
                kHSpace8,
                Text(
                  feature3Name,
                  style: const TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.circle_rounded,
                  color: orange,
                ),
                kHSpace8,
                Text(
                  feature4Name,
                  style: const TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            kVSpace16,
            Row(
              children: [
                Icon(
                  Icons.circle_rounded,
                  color: orange,
                ),
                kHSpace8,
                Text(
                  feature5Name,
                  style: const TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            kVSpace16,
            Row(
              children: [
                Icon(
                  Icons.circle_rounded,
                  color: orange,
                ),
                kHSpace8,
                Text(
                  feature6Name,
                  style: const TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
