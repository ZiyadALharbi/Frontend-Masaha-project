import 'package:flutter/material.dart';
import 'package:frontend/constants/colors.dart';
import 'package:frontend/constants/spaces.dart';
import 'package:frontend/services/extensions/nav.dart';

import '../../components/All/drop_down_menu.dart';
import '../../components/All/textfield.dart';
import '../owner/add_space.dart';
import 'confirm_booking.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(102, 103, 100, 83),
              child: LabelBooking(
                title: 'لحجز مساحتك',
              ),
            ),
            const TextFieldCustom(
              label: 'الإسم بالكامل',
              width: 350,
              height: 56,
            ),
            kVSpace32,
            const TextFieldCustom(
              label: 'رقم الجوال',
              width: 350,
              height: 56,
            ),
            kVSpace32,
            const TextFieldCustom(
              label: 'البريد الالكتروني',
              width: 350,
              height: 56,
            ),
            kVSpace32,
            DropDownMenuOwner(
                width: 400,
                height: 56,
                label: 'الخطط',
                hint: 'إختر نوع الخطة التي تريد إضافتها',
                typesAndPlans: planTypes,
                selectedTypesAndPlans: selectedPlanTypes),
            kVSpace32,
            TextFieldCustom(
              icon: Icon(
                Icons.calendar_month_rounded,
                color: darkBlue,
              ),
              label: 'التاريخ والوقت',
              width: 350,
              height: 56,
            ),
            kVSpace70,
            ElevatedButton(
                onPressed: () {
                  context.pushAndRemove(view: const ConfirmBooking());
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(orange)),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'تأكيد الحجز',
                    style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class LabelBooking extends StatelessWidget {
  const LabelBooking({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontFamily: 'Tajawal',
          fontSize: 36,
          fontWeight: FontWeight.w700,
          color: darkBlue),
    );
  }
}
