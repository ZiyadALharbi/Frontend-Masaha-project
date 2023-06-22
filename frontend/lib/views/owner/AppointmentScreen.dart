import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:frontend/services/api/owner/reservation_owner_api.dart';
import '../../components/AppointmentComponents/AppointmentsText.dart';
import '../../components/AppointmentComponents/CardCustomerAppointments.dart';
import '../../constants/colors.dart';
import '../../constants/spaces.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  List reservations = [];

  @override
  void initState() {
    super.initState();
    getProducts();
  }

  getProducts() async {
    final response = await displayReservationOwner();
    if (response.statusCode == 200) {
      try {
        reservations = json.decode(response.body);
        setState(() {});
      } catch (error) {
        print(error);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 7,
        child: Scaffold(
          backgroundColor: white,
          //_________________Abb Bar______________________
          // appBar: AppBar(
          //   //________________Tab Bar_____________________
          //   bottom: TabBarAppointmentComp(),
          //   shadowColor: const Color.fromARGB(0, 255, 255, 255),
          //   backgroundColor: white,
          // ),

          //____________body or TabBarView____________
          body: Directionality(
            textDirection: TextDirection.ltr,
            child: ListView(
              children: [
                kVSpace48,
                const AppointmentsText(),
                for (var reservation in reservations.reversed)
                  CardCustomerAppointments(
                    listOfReservation: reservation,
                    BookingStatus: 'تم الحجز',
                  )
              ],
            ),
          ),
        ));
  }
}
