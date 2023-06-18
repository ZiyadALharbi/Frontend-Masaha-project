import 'package:flutter/material.dart';

import '../../components/AppointmentComponents/AppointmentsText.dart';
import '../../components/AppointmentComponents/CardCustomerAppointments.dart';
import '../../components/AppointmentComponents/TabBarAppointmentComp.dart';

import '../../components/home/home_nav.dart';
import '../../constants/colors.dart';
import '../../constants/spaces.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
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
            body: const Directionality(
              textDirection: TextDirection.ltr,
              child: TabBarView(children: [
                //_____________Saturday Page____________________
                Column(
                  children: [
                    kVSpace48,
                    AppointmentsText(),
                    CardCustomerAppointments(
                      NameCustomer: "الوليد خشيم",
                      DateAppointments: " 5:30-2023/6/23  ",
                      BookingStatus: "تم الحجز",
                      Diys: " السبت",
                    ),
                  ],
                ),
                //_____________Friday Page_________________
                Column(
                  children: [
                    kVSpace48,
                    AppointmentsText(),
                    CardCustomerAppointments(
                      NameCustomer: "عمر الشهري",
                      DateAppointments: "5:30-2023/6/23 ",
                      BookingStatus: "ملغي",
                      Diys: " الجمعة ",
                    ),
                  ],
                ),
                //_____________Thursday Page_________________
                Column(
                  children: [
                    kVSpace48,
                    AppointmentsText(),
                    CardCustomerAppointments(
                      NameCustomer: "لجين صلاح",
                      DateAppointments: "5:30-2023/6/23 ",
                      BookingStatus: "تم الحجز",
                      Diys: " الخميس",
                    ),
                  ],
                ),
                //_____________Wednesday Page_________________
                Column(
                  children: [
                    kVSpace48,
                    AppointmentsText(),
                    CardCustomerAppointments(
                      NameCustomer: "زياد الحربي",
                      DateAppointments: "5:30-2023/6/23 ",
                      BookingStatus: "ملغي",
                      Diys: " الابعاء",
                    ),
                  ],
                ),
                //_____________Tuesday Page_________________
                Column(
                  children: [
                    kVSpace48,
                    AppointmentsText(),
                    CardCustomerAppointments(
                      NameCustomer: "رنا الظاهري",
                      DateAppointments: "5:30-2023/6/23 ",
                      BookingStatus: "تم الحجز",
                      Diys: " الثلثاء",
                    ),
                  ],
                ),
                //_____________Monday Page_________________
                Column(
                  children: [
                    kVSpace48,
                    AppointmentsText(),
                    CardCustomerAppointments(
                      NameCustomer: "احمد خالد",
                      DateAppointments: "5:30-2023/6/23 ",
                      BookingStatus: "تم الحجز",
                      Diys: " الاثنين",
                    ),
                  ],
                ),
                //_____________Sunday Page_________________
                Column(
                  children: [
                    kVSpace48,
                    AppointmentsText(),
                    CardCustomerAppointments(
                      NameCustomer: "فايز خشيم",
                      DateAppointments: "5:30-2023/6/23 ",
                      BookingStatus: "تم الحجز",
                      Diys: " الاحد",
                    ),
                  ],
                ),
              ]),
            ),

            //_____________bottomNavigationBar________________
            bottomNavigationBar: const HomeNav()));
  }
}
