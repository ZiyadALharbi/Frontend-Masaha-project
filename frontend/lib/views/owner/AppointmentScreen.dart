import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:frontend/services/api/owner/reservation_owner_api.dart';
import '../../components/AppointmentComponents/AppointmentsText.dart';
import '../../components/AppointmentComponents/CardCustomerAppointments.dart';
import '../../components/AppointmentComponents/TabBarAppointmentComp.dart';
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
          appBar: AppBar(
            //________________Tab Bar_____________________
            bottom: TabBarAppointmentComp(),
            shadowColor: const Color.fromARGB(0, 255, 255, 255),
            backgroundColor: white,
          ),

          //____________body or TabBarView____________
          body: Directionality(
            textDirection: TextDirection.ltr,
            child: TabBarView(children: [
              //_____________Saturday Page____________________
              ListView(
                children: [
                  kVSpace48,
                  const AppointmentsText(),
                  for (var reservation in reservations)
                    reservation['created_at'].toString().substring(0, 10) ==
                            '2023-06-24'
                        ? CardCustomerAppointments(
                            listOfReservation: reservation,
                            BookingStatus: 'ملغي',
                          )
                        : const SizedBox.shrink()
                ],
              ),
              //_____________Friday Page_________________
              ListView(
                children: [
                  kVSpace48,
                  const AppointmentsText(),
                  for (var reservation in reservations)
                    reservation['created_at'].toString().substring(0, 10) ==
                            '2023-06-23'
                        ? CardCustomerAppointments(
                            listOfReservation: reservation,
                            BookingStatus: 'ملغي',
                          )
                        : const SizedBox.shrink()
                ],
              ),
              //_____________Thursday Page_________________
              ListView(
                children: [
                  kVSpace48,
                  const AppointmentsText(),
                  for (var reservation in reservations)
                    reservation['created_at'].toString().substring(0, 10) ==
                            '2023-06-22'
                        ? CardCustomerAppointments(
                            listOfReservation: reservation,
                            BookingStatus: 'ملغي',
                          )
                        : const SizedBox.shrink()
                ],
              ),
              //_____________Wednesday Page_________________
              ListView(
                children: [
                  kVSpace48,
                  const AppointmentsText(),
                  for (var reservation in reservations)
                    reservation['created_at'].toString().substring(0, 10) ==
                            '2023-06-21'
                        ? CardCustomerAppointments(
                            listOfReservation: reservation,
                            BookingStatus: 'ملغي',
                          )
                        : const SizedBox.shrink()
                ],
              ),
              //_____________Tuesday Page_________________
              ListView(
                children: [
                  kVSpace48,
                  const AppointmentsText(),
                  for (var reservation in reservations)
                    reservation['created_at'].toString().substring(0, 10) ==
                            '2023-06-20'
                        ? CardCustomerAppointments(
                            listOfReservation: reservation,
                            BookingStatus: 'ملغي',
                          )
                        : const SizedBox.shrink()
                ],
              ),
              //_____________Monday Page_________________
              ListView(
                children: [
                  kVSpace48,
                  const AppointmentsText(),
                  for (var reservation in reservations)
                    reservation['created_at'].toString().substring(0, 10) ==
                            '2023-06-19'
                        ? CardCustomerAppointments(
                            listOfReservation: reservation,
                            BookingStatus: 'ملغي',
                          )
                        : const SizedBox.shrink()
                ],
              ),
              //_____________Sunday Page_________________
              ListView(
                children: [
                  kVSpace48,
                  const AppointmentsText(),
                  for (var reservation in reservations)
                    reservation['created_at'].toString().substring(0, 10) ==
                            '2023-06-18'
                        ? CardCustomerAppointments(
                            listOfReservation: reservation,
                            BookingStatus: 'ملغي',
                          )
                        : const SizedBox.shrink()
                ],
              ),
            ]),
          ),
        ));
  }
}
