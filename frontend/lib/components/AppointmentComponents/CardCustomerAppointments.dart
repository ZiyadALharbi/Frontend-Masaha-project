// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/spaces.dart';

class CardCustomerAppointments extends StatelessWidget {
  const CardCustomerAppointments({
    super.key,
    required this.BookingStatus,
    required this.listOfReservation,
  });
  final BookingStatus;

  final Map listOfReservation;
  @override
  Widget build(BuildContext context) {
    Color ColorStatys = const Color.fromARGB(255, 0, 0, 0);

//_____________Here to compare the girls that come from the server to determine their gender and color___________

    if (BookingStatus == "ملغي") {
      ColorStatys = red;
    } else if (BookingStatus == "تم الحجز") {
      ColorStatys = green;
    }

    return Column(
      children: [
        kVSpace8,
        Column(
          children: [
            kVSpace8,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 2, right: 1, left: 1, top: 0.2),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 255, 255, 255),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset.zero,
                          color: Color.fromARGB(116, 166, 166, 166),
                          spreadRadius: 3,
                          blurRadius: 2,
                          // changes position of shadow
                        ),
                      ],
                    ),
                    width: 400,
                    height: 130,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        BookingStatus,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 25,
                                          color: ColorStatys,
                                          fontFamily: 'Tajawal',
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(9.0),
                                            child: Text(
                                              listOfReservation[
                                                  'customer_username'],
                                              textAlign: TextAlign.end,
                                              style: const TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Tajawal',
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(9.0),
                                            child: Row(
                                              children: [
                                                Text(
                                                    listOfReservation['date'] ??
                                                        '',
                                                    textAlign: TextAlign.end,
                                                    style: const TextStyle(
                                                        fontFamily: 'Tajawal',
                                                        fontSize: 15))
                                                // Text(
                                                //     listOfReservation[
                                                //         'created_at'],
                                                //     textAlign: TextAlign.end,
                                                //     style: const TextStyle(
                                                //         fontFamily: 'Tajawal',
                                                //         fontSize: 15))
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
