import 'package:flutter/material.dart';
import 'package:frontend/services/extensions/nav.dart';

import '../../../../constants/colors.dart';
import '../../../../views/CustomerScreens/booking_page.dart';

class BookingButton extends StatelessWidget {
  const BookingButton({
    super.key, required this.product,
  });

  final Map product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 100, 20, 20),
      child: ElevatedButton(
        onPressed: () {
          context.nextPage(view:  BookingScreen(product: product));
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(orange),
          elevation: MaterialStateProperty.all(0),
        ),
        child: const Padding(
          padding: EdgeInsets.fromLTRB(80, 20, 80, 20),
          child: Text(
            "حجز المساحة",
            style: TextStyle(fontSize: 24, fontFamily: 'Tajawal'),
          ),
        ),
      ),
    );
  }
}
