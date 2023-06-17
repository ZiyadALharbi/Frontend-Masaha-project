import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: white),
      child: Column(
        children: [
          ListTile(
            title: Text(
              "اسم المساحة",
              style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 20,
                  color: darkBlue,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text(
                "نوع المساحة",
                style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 14,
                    color: darkBlue,
                    fontWeight: FontWeight.w400),
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "السعر",
                style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 16,
                    color: blue,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              height: 1,
              color: darkGrey,
              thickness: 0.1,
            ),
          ),
        ],
      ),
    );
  }
}
