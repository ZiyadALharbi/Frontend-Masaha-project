import 'package:flutter/material.dart';
import 'package:frontend/services/extensions/next_page.dart';

import '../constants/colors.dart';

class TextButtonQuestion extends StatefulWidget {
  const TextButtonQuestion(
      {super.key,
      required this.question,
      required this.login,
      required this.page});

  final String question;
  final String login;
  final Widget page;

  @override
  State<TextButtonQuestion> createState() => _TextButtonQuestionState();
}

class _TextButtonQuestionState extends State<TextButtonQuestion> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.question,
          style: TextStyle(
              fontFamily: 'Tajawal',
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: darkBlue),
        ),
        TextButton(
          onPressed: () {
            setState(() {});
            context.nextPage(view: widget.page);
          },
          child: Text(widget.login,
              style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: orange,
                  decoration: TextDecoration.underline)),
        ),
      ],
    );
  }
}
