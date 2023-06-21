import 'package:flutter/material.dart';
import 'package:frontend/components/Customer/CustomerNavBar.dart';
import 'package:frontend/components/Customer/Product_Details/booking/label_booking.dart';
import 'package:frontend/constants/colors.dart';
import 'package:frontend/constants/spaces.dart';
import 'package:frontend/services/extensions/nav.dart';
import 'package:rive/rive.dart';

class ConfirmBooking extends StatefulWidget {
  const ConfirmBooking({super.key});

  @override
  State<ConfirmBooking> createState() => _ConfirmBookingState();
}

class _ConfirmBookingState extends State<ConfirmBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(100, 200, 100, 0),
            child: Column(
              children: [
                const SizedBox(
                  height: 200,
                  width: 400,
                  child: RiveAnimation.asset(
                      'assets/animations/projects-icon.riv'),
                ),
                Column(
                  children: [
                    const LabelBooking(
                      title: 'تم تأكيد الحجز بنجاح',
                      titlesize: 24,
                    ),
                    kVSpace90,
                    TextButton(
                        onPressed: () {
                          context.pushAndRemove(view: const CustomerNavBar());
                        },
                        child: Text(
                          'الرجوع للصفحة الرئيسية',
                          textAlign: TextAlign.center,
                          strutStyle: const StrutStyle(),
                          style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 24,
                              color: orange,
                              fontWeight: FontWeight.w500),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
