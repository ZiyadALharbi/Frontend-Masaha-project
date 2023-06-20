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
              children:  [
                TextListOfReservations(),
                for (var item in reservation)
                CardListOfReservations(
                  imgUrl:
                      "https://1.bp.blogspot.com/--zmpEoUGNhU/X-QXzhRR9GI/AAAAAAAABtY/TU0eL4WbHpAYah9NLlHt0lSUd5Y_zH5ngCLcBGAsYHQ/s638/images%2B-%2B2020-12-24T062310.080.jpeg", reservation: item,
                ),
                // CardListOfReservations(
                //   NameSpace: 'كفة',
                //   Date: "5/9",
                //   ThePrice: "١٠٠",
                //   imgUrl:
                //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYIa6D7LhMk7211BoEiPhRGHFRpLUEBmWjOQ&usqp=CAU",
                // ),
                // CardListOfReservations(
                //   NameSpace: 'او زد',
                //   Date: "5/9",
                //   ThePrice: "١٥٠",
                //   imgUrl:
                //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlikCqXQoA-pxzyfKmlRNGcybiIcUid3tw1g&usqp=CAU",
                // ),
                // CardListOfReservations(
                //   NameSpace: 'شاي',
                //   Date: "5/9",
                //   ThePrice: "٢٠",
                //   imgUrl:
                //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRK5U33XP8b6dz4LsJ1n3ZMM_PHxFBXNmEZVQ&usqp=CAU",
                // ),
                // CardListOfReservations(
                //   NameSpace: 'اشجار',
                //   Date: "5/9",
                //   ThePrice: "٣٠",
                //   imgUrl:
                //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT849pUyDUb3wJUnp9UfKlB5-GYEELyXKyY4g&usqp=CAU",
                // ),
                // CardListOfReservations(
                //   NameSpace: 'طويق',
                //   Date: "5/9",
                //   ThePrice: "٤٠",
                //   imgUrl:
                //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXnCo8T9ziszkYjXX82k_ilnF0PVM7G9Et4g&usqp=CAU",
                // ),
                // CardListOfReservations(
                //   NameSpace: 'اشجار',
                //   Date: "5/9",
                //   ThePrice: "٦٠",
                //   imgUrl:
                //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6crZbInPrYLLdaYI3TMiyibyxmnnsBsyKHg&usqp=CAU",
                // ),
              ],
            ),
          ),
        ));
  }
}