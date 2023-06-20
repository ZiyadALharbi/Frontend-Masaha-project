import 'package:flutter/material.dart';
import 'package:frontend/constants/colors.dart';
import 'package:frontend/constants/spaces.dart';

import '../../components/All/textfield.dart';
import '../../components/Customer/Product_Details/booking/confirm_button.dart';
import '../../components/Customer/Product_Details/booking/label_booking.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(102, 103, 100, 83),
                  child: LabelBooking(
                    title: 'لحجز مساحتك',
                    titlesize: 36,
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
                // DropDownMenuOwner(
                //   width: 400,
                //   height: 56,
                //   label: 'الخطط',
                //   hint: 'إختر نوع الخطة التي تريد إضافتها',
                //   typesAndPlans: planTypes,
                //   selectedTypesAndPlans: selectedPlanTypes,
                //   onTypeChange: (List<dynamic> hhh) {},
                // ),

                // RadioButton(
                //   onTypeChange: (newValue) {
                //     var userType = newValue;
                //     setState(() {});
                //   },
                // ),
                // RadioButton(
                //   onTypeChange: (newValue) {
                //     var userType = newValue;
                //     setState(() {});
                //   },
                // ),
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
                const LabelBooking(
                  title: 'معلومات الدفع',
                  titlesize: 24,
                ),
                kVSpace8,
                const Icon(
                  Icons.add_card_rounded,
                  size: 36,
                ),
                kVSpace70,
                const TextFieldCustom(
                  label: 'رقم البطاقة',
                  hint: 'XXXX   XXXX  XXXX  XXXX',
                  width: 350,
                  height: 56,
                ),
                kVSpace32,
                const TextFieldCustom(
                  label: 'إسم حامل البطاقة',
                  hint: 'ااسم الظاهر على البطاقة',
                  width: 350,
                  height: 56,
                ),
                kVSpace32,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFieldCustom(
                      label: 'تاريخ الانتهاء',
                      hint: 'yy/mm',
                      width: 104,
                      height: 56,
                    ),
                    kHSpace64,
                    kHSpace64,
                    kHSpace16,
                    TextFieldCustom(
                      label: 'CVV',
                      hint: '123',
                      width: 104,
                      height: 56,
                    ),
                  ],
                ),
                kVSpace64,
                const Divider(
                  height: 16,
                ),
                kVSpace8,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    LabelBooking(
                      title: 'السعر 500 ريال',
                      titlesize: 20,
                    ),
                    kHSpace32,
                    ConfirmButton(),
                  ],
                ),
                kVSpace32,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
