import 'package:flutter/material.dart';
import 'package:frontend/constants/colors.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
      ),
      body: const Center(
        child: Text("hello"),
      ),
    );
  }
}
