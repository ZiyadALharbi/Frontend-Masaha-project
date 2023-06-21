// ignore_for_file: file_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:frontend/services/api/customer/display_reservation_customer.dart';
import '../../components/ListOfResrvationsComp/CardListOfR.dart';
import '../../components/ListOfResrvationsComp/TextListOfReservations.dart';
import '../../constants/colors.dart';

class ListOfReservationsScreen extends StatefulWidget {
  const ListOfReservationsScreen({super.key});

  @override
  State<ListOfReservationsScreen> createState() =>
      _ListOfReservationsScreenState();
}

class _ListOfReservationsScreenState extends State<ListOfReservationsScreen> {
  List reservation = [];

  @override
  void initState() {
    super.initState();
    getProducts();
  }

  getProducts() async {
    final response = await displayReservationCustomer();
    if (response.statusCode == 200) {
      try {
        reservation = json.decode(response.body);
        setState(() {});
      } catch (error) {
        print(error);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: white,
          shadowColor: const Color.fromARGB(0, 255, 255, 255),
        ),
        backgroundColor: white,
        body: Directionality(
          textDirection: TextDirection.ltr,
          child: SafeArea(
            child: ListView(
              children: [
                const TextListOfReservations(),
                for (var item in reservation)
                  CardListOfReservations(
                    imgUrl:
                        "https://1.bp.blogspot.com/--zmpEoUGNhU/X-QXzhRR9GI/AAAAAAAABtY/TU0eL4WbHpAYah9NLlHt0lSUd5Y_zH5ngCLcBGAsYHQ/s638/images%2B-%2B2020-12-24T062310.080.jpeg",
                    reservation: item,
                  ),
              ],
            ),
          ),
        ));
  }
}
