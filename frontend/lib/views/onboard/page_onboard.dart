import 'package:flutter/material.dart';
import 'package:frontend/constants/colors.dart';
import 'package:frontend/services/extensions/nav.dart';
import 'package:frontend/views/auth/sign_up.dart';

class PageOnboard extends StatefulWidget {
  const PageOnboard({super.key, required this.image, this.next});

  final String image;
  final String? next;

  @override
  State<PageOnboard> createState() => _PageOnboardState();
}

class _PageOnboardState extends State<PageOnboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(widget.image)),
        ),
        child: TextButton(
            onPressed: () {
              setState(() {});
              context.nextPage(view: const SignUp());
            },
            child: Text(
              widget.next ?? '',
              style: TextStyle(
                  color: black,
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  decoration: TextDecoration.underline),
            )),
      ),
    );
  }
}
