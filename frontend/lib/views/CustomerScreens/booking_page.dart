import 'package:flutter/material.dart';
import 'package:frontend/components/AppointmentComponents/date_picker.dart';
import 'package:frontend/constants/colors.dart';
import 'package:frontend/constants/spaces.dart';
import 'package:frontend/services/extensions/nav.dart';

import '../../components/All/textfield.dart';
import '../../components/Customer/Product_Details/booking/label_booking.dart';
import '../../services/api/customer/add_reservation_customer_api.dart';
import 'confirm_booking.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key, required this.product});

  final Map product;

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

String selectedDate = '2023-06-21';

class _BookingScreenState extends State<BookingScreen> {
  TextEditingController nameController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  // final String price;
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
                  textController: nameController,
                ),
                kVSpace32,
                TextFieldCustom(
                  label: 'رقم الجوال',
                  width: 350,
                  height: 56,
                  textController: phoneController,
                ),
                kVSpace32,
                TextFieldCustom(
                  label: 'البريد الالكتروني',
                  width: 350,
                  height: 56,
                  textController: emailController,
                ),
                kVSpace32,
                DayPicker(
                  onTypeChange: (selectedDay) {
                    selectedDate = selectedDay;
                    setState(() {});
                  },
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
                  // textController: cardNumber,
                  label: 'رقم البطاقة',
                  hint: 'XXXX   XXXX  XXXX  XXXX',
                  width: 350,
                  height: 56,
                ),
                kVSpace32,
                const TextFieldCustom(
                  // textController: cardName,
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
                      // textController: expireDate,
                      label: 'تاريخ الانتهاء',
                      hint: 'yy/mm',
                      width: 104,
                      height: 56,
                    ),
                    kHSpace64,
                    kHSpace64,
                    kHSpace16,
                    TextFieldCustom(
                      // textController: cvv,
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
                      title:
                          'السعر ${int.parse(widget.product["price"].toString())} ريال',
                      titlesize: 20,
                    ),
                    kHSpace32,
                    ElevatedButton(
                      onPressed: () async {
                        final Map body = {
                          "name": nameController.text,
                          "email": emailController.text,
                          "phone": phoneController.text,
                          "id": widget.product["id"],
                          "date": selectedDate
                        };
                        final response =
                            await addReservationCustomer(body: body);
                        if (response.statusCode == 200) {
                          context.nextPage(view: const ConfirmBooking());
                        } else {
                          print(response.body);
                        }
                        setState(() {});
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
                      ),
                    ),
                    // ConfirmButton(reservation: {
                    //   'name': nameController.text,
                    //   'phone': phoneController.text,
                    //   'email': emailController.text,
                    // }),
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
