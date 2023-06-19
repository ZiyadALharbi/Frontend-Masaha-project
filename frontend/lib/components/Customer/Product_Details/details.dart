import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/spaces.dart';
import '../../All/product_features.dart';

class Details extends StatelessWidget {
  const Details({
    super.key,
    required this.ownerName,
    required this.spaceName,
    required this.price,
    required this.location,
    required this.description,
  });

  final String ownerName;
  final String spaceName;
  final String price;
  final String location;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kVSpace8,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                spaceName,
                style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w700,
                    fontSize: 36,
                    color: darkBlue),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      ownerName,
                      style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: orange),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      '$price ر.س',
                      style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: darkBlue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                location,
                style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: lightGrey),
              ),
            ],
          ),
        ),
        const Divider(),
        Column(
          children: [
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(description, textAlign: TextAlign.start),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 66),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "المميزات",
                style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w700,
                    fontSize: 36,
                    color: darkBlue),
              ),
            ],
          ),
        ),
        const Features(
          feature1Name: 'الميزة الأولى',
          feature2Name: 'الميزة الثانية',
          feature3Name: 'الميزة الثالثة',
          feature4Name: 'الميزة الرابعة',
          feature5Name: 'الميزة الخامسة',
          feature6Name: 'الميزة السادسة',
        ),
      ],
    );
  }
}
