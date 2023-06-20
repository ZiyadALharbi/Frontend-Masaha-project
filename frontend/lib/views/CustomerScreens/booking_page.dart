import 'package:flutter/material.dart';
import 'package:frontend/constants/colors.dart';
import 'package:frontend/constants/spaces.dart';

import '../../components/All/textfield.dart';
import '../../components/Customer/Product_Details/booking/confirm_button.dart';
import '../../components/Customer/Product_Details/booking/label_booking.dart';

class BookingScreen extends StatelessWidget {
  BookingScreen({super.key, required this.price});

  final String price;
  final TextEditingController name = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController dateAndTime = TextEditingController();
  final TextEditingController cardNumber = TextEditingController();
  final TextEditingController cardName = TextEditingController();
  final TextEditingController expireDate = TextEditingController();
  final TextEditingController cvv = TextEditingController();

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
                TextFieldCustom(
                  label: 'الإسم بالكامل',
                  width: 350,
                  height: 56,
                  textController: name,
                ),
                kVSpace32,
                TextFieldCustom(
                  label: 'رقم الجوال',
                  width: 350,
                  height: 56,
                  textController: phone,
                ),
                kVSpace32,
                TextFieldCustom(
                  label: 'البريد الالكتروني',
                  width: 350,
                  height: 56,
                  textController: email,
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
                  textController: dateAndTime,
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
                TextFieldCustom(
                  textController: cardNumber,
                  label: 'رقم البطاقة',
                  hint: 'XXXX   XXXX  XXXX  XXXX',
                  width: 350,
                  height: 56,
                ),
                kVSpace32,
                TextFieldCustom(
                  textController: cardName,
                  label: 'إسم حامل البطاقة',
                  hint: 'ااسم الظاهر على البطاقة',
                  width: 350,
                  height: 56,
                ),
                kVSpace32,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFieldCustom(
                      textController: expireDate,
                      label: 'تاريخ الانتهاء',
                      hint: 'yy/mm',
                      width: 104,
                      height: 56,
                    ),
                    kHSpace64,
                    kHSpace64,
                    kHSpace16,
                    TextFieldCustom(
                      textController: cvv,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    LabelBooking(
                      title: 'السعر ${int.parse(price)} ريال',
                      titlesize: 20,
                    ),
                    kHSpace32,
                    ConfirmButton(reservation: {
                      'customer_name': name.text,
                      'customer_phone': phone.text,
                      'customer_email': email.text,
                    }),
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
