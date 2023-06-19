// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../../services/extensions/nav.dart';
import '../../constants/colors.dart';

class TextButtonQuestion extends StatefulWidget {
  TextButtonQuestion({super.key, this.question, this.login, this.page});

  String? question;
  String? login;
  Widget? page;

  @override
  State<TextButtonQuestion> createState() => _TextButtonQuestionState();
}

class _TextButtonQuestionState extends State<TextButtonQuestion> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.question ?? '',
          style: TextStyle(
              fontFamily: 'Tajawal',
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: darkBlue),
        ),
        TextButton(
          onPressed: () {
            setState(() {});
            context.nextPage(view: widget.page ?? const SizedBox.shrink());
          },
          child: Text(widget.login ?? '',
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
