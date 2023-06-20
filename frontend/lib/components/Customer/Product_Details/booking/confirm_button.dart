import 'package:flutter/material.dart';
import 'package:frontend/services/extensions/nav.dart';
import '../../../../constants/colors.dart';
import '../../../../views/CustomerScreens/confirm_booking.dart';

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.nextPage(view: const ConfirmBooking());
      },
      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(orange)),
      child: const Padding(
        padding: EdgeInsets.all(12.0),
        child: Text(
          'تأكيد الحجز',
          style: TextStyle(
              fontFamily: 'Tajawal', fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
