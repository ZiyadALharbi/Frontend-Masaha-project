import 'package:flutter/material.dart';
import 'package:frontend/constants/spaces.dart';

import '../../constants/colors.dart';

class CustomerHome extends StatefulWidget {
  const CustomerHome({super.key});

  @override
  State<CustomerHome> createState() => _CustomerHomeState();
}

class _CustomerHomeState extends State<CustomerHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 103, 0, 0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Row(
                  children: [
                    Text('مرحبا فلان،',
                        style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.w700,
                            fontSize: 36,
                            color: darkBlue)),
                  ],
                ),
              ),
              kVSpace64,
              Row(
                children: [
                  kHSpace16,
                  Text(
                    "تصنيفات مساحة العمل",
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: darkBlue,
                    ),
                  ),
                ],
              ),
              kVSpace16,
              TabBar(
                isScrollable: true,
                physics: const ClampingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                unselectedLabelColor: black,
                indicator: BoxDecoration(
                  color: orange.withOpacity(0.80),
                  borderRadius: BorderRadius.circular(50),
                ),
                labelPadding: const EdgeInsets.symmetric(horizontal: 11),
                tabs: [
                  Tab(
                    child: Text(
                      'مساحة مشتركة',
                      style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontWeight: FontWeight.w800,
                          fontSize: 12,
                          color: black),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'مساحة خاصة',
                      style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontWeight: FontWeight.w800,
                          fontSize: 12,
                          color: black),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'مكتب خاص',
                      style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontWeight: FontWeight.w800,
                          fontSize: 12,
                          color: black),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'قاعة اجتماعات',
                      style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontWeight: FontWeight.w800,
                          fontSize: 12,
                          color: black),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'ورشة عمل',
                      style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontWeight: FontWeight.w800,
                          fontSize: 12,
                          color: black),
                    ),
                  ),
                ],
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    Icon(Icons.directions_car),
                    Icon(Icons.directions_transit),
                    Icon(Icons.directions_bike),
                    Icon(Icons.directions_bike),
                    Icon(Icons.directions_bike),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
