import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/spaces.dart';

class SignOutButton extends StatelessWidget {
  const SignOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
                  fontSize: 18,
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
    );
  }
}
