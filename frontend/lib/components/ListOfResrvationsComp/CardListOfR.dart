import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:frontend/constants/colors.dart';

class CardListOfReservations extends StatelessWidget {
  const CardListOfReservations({
    super.key,
    this.imgUrl,
    required this.reservation,
  });
  final Map reservation;
  final imgUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0, left: 4.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 4.0, left: 0, top: 16),
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: darkGrey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ], color: white, borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: white, borderRadius: BorderRadius.circular(30)),
                  width: 430,
                  height: 130,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 11.0, bottom: 20, left: 7, right: 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  child: SizedBox(
                                    width: 55,
                                    child: Text(
                                      reservation['price'].toString(),
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontSize: 19,
                                        fontFamily: 'Tajawal',
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  child: SizedBox(
                                      width: 83,
                                      child: Text(reservation['created_at'],
                                          style: const TextStyle(
                                            fontFamily: 'Tajawal',
                                          ),
                                          overflow: TextOverflow.ellipsis)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 12.0, right: 12, bottom: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  child: SizedBox(
                                    width: 110,
                                    child: Text(
                                      reservation['product_name'],
                                      textAlign: TextAlign.end,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontFamily: 'Tajawal',
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 39),
                              child: Container(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                child: Row(
                                  children: [
                                    InkWell(
                                        onTap: () {},
                                        child: const Text(
                                          "الموقع",
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontFamily: 'Tajawal',
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.cover,
                              width: 193,
                              height: 135,
                              image: NetworkImage(json
                                  .decode(reservation["products"]["images"])
                                  .first)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
