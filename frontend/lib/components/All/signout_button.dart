import 'package:flutter/material.dart';
import 'package:frontend/services/extensions/nav.dart';
import 'package:frontend/views/onboard/onboard.dart';
import 'package:get_storage/get_storage.dart';
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
            onPressed: () {
              final box = GetStorage();
              box.remove("token");
              context.pushAndRemove(view: const OnBoard());
            },
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
