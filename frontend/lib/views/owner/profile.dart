import 'package:flutter/material.dart';
import 'package:frontend/constants/colors.dart';
import 'package:frontend/constants/spaces.dart';

import '../../components/All/profile_card.dart';

class ProfileOwner extends StatelessWidget {
  const ProfileOwner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 158, 0, 0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 21),
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
            kVSpace90,
            const ProfileCard(
              cardTilte: 'التنبيهات',
              cardIcon: (Icons.notifications_none_rounded),
            ),
            const ProfileCard(
              cardTilte: 'الإعدادات',
              cardIcon: (Icons.settings_outlined),
            ),
            const ProfileCard(
              cardTilte: 'الخصوصية والأمان',
              cardIcon: (Icons.shield_outlined),
            ),
            ListTile(
              title: Row(
                children: [
                  kHSpace16,
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'تسجيل الخروج',
                      style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: orange),
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
      ),
    );
  }
}
