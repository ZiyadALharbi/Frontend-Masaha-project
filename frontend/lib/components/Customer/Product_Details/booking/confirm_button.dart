import 'package:flutter/material.dart';
import 'package:frontend/services/api/customer/add_reservation_customer_api.dart';
import 'package:frontend/services/extensions/nav.dart';
import '../../../../constants/colors.dart';
import '../../../../views/CustomerScreens/confirm_booking.dart';

class ConfirmButton extends StatefulWidget {
  const ConfirmButton({
    super.key,
    required this.reservation,
  });

  final Map reservation;

  @override
  State<ConfirmButton> createState() => _ConfirmButtonState();
}

class _ConfirmButtonState extends State<ConfirmButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        final response = await addReservationCustomer(body: widget.reservation);
        if (response.statusCode == 200) {
          context.nextPage(view: const ConfirmBooking());
        } else {
          print(response.body);
        }
        setState(() {});
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
