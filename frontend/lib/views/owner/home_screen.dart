import 'package:flutter/material.dart';
import 'package:frontend/services/extensions/nav.dart';

import '../../components/All/custom_button.dart';
import '../../components/home/space_card.dart';
import '../../constants/colors.dart';
import 'add_space.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 100, 12, 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'المساحات المتوفرة',
                style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 24,
                    color: darkBlue,
                    fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: darkBlue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () async {
                    context.nextPage(view: const AddSpace());
                    setState(() {});
                  },
                  child: const CustomButton(
                    buttonTitle: '     إضافة     ',
                    textSize: 12,
                  ))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: darkGrey.withOpacity(0.3),

                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ], borderRadius: BorderRadius.circular(30), color: white),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CustomCard(),
                  CustomCard(),
                  CustomCard(),
                  CustomCard(),
                  CustomCard(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
