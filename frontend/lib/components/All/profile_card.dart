import 'package:flutter/material.dart';
import 'package:frontend/constants/spaces.dart';

import '../../constants/colors.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    required this.cardTilte,
    required this.cardIcon,
  });

  final String cardTilte;
  final IconData cardIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                kHSpace8,
                Icon(
                  cardIcon,
                  color: orange,
                  size: 30,
                ),
                kHSpace8,
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    cardTilte,
                    style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 18,
                        color: darkBlue,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            trailing: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: black,
                )),
          ),
          Divider(
            height: 1,
            color: darkGrey,
            thickness: 0.1,
          ),
        ],
      ),
    );
  }
}
