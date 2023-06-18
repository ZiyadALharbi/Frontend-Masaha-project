import 'package:flutter/material.dart';

extension NavExtension on BuildContext {
  pushPage(Widget widget) {
    Navigator.push(
      this,
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
      ),
    );
  }
}