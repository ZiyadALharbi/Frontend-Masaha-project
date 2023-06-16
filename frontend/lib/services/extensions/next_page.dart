import 'package:flutter/material.dart';

extension Nav on BuildContext {
  nextPage({required Widget view}) {
    Navigator.push(this, MaterialPageRoute(builder: (context) => view));
  }
}