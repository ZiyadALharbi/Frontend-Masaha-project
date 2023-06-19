import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../views/CustomerScreens/ArchivesScreens.dart';
import '../../views/CustomerScreens/List_of_reservationsScreen.dart';
import '../../views/CustomerScreens/Profile.dart';
import '../../views/CustomerScreens/home_screen.dart';

class CustomerNavBar extends StatefulWidget {
  const CustomerNavBar({super.key});

  @override
  State<CustomerNavBar> createState() => _CustomerNavBarState();
}

class _CustomerNavBarState extends State<CustomerNavBar> {
  List screens = [
    const CustomerHome(),
    const ListOfReservationsScreen(),
    const ArchivesScreens(),
    const ProfileCustomer()
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          animationDuration: const Duration(milliseconds: 150),
          iconSize: 28,
          showElevation: false,
          selectedIndex: currentIndex,
          onItemSelected: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavyBarItem(
              activeColor: blue,
              inactiveColor: darkGrey,
              textAlign: TextAlign.center,
              icon: const Icon(Icons.home_outlined),
              title: const Text(
                "الرئيسية",
                style: TextStyle(fontFamily: 'Tajawal', fontSize: 12),
              ),
            ),
            BottomNavyBarItem(
              activeColor: blue,
              inactiveColor: darkGrey,
              textAlign: TextAlign.center,
              icon: const Icon(Icons.book_outlined),
              title: const Text(
                "الحجوزات",
                style: TextStyle(fontFamily: 'Tajawal', fontSize: 12),
              ),
            ),
            BottomNavyBarItem(
              activeColor: blue,
              inactiveColor: darkGrey,
              textAlign: TextAlign.center,
              icon: const Icon(Icons.archive_outlined),
              title: const Text(
                "المحفوظات",
                style: TextStyle(fontFamily: 'Tajawal', fontSize: 12),
              ),
            ),
            BottomNavyBarItem(
              activeColor: blue,
              inactiveColor: darkGrey,
              textAlign: TextAlign.center,
              icon: const Icon(Icons.person_2_outlined),
              title: const Text(
                "الملف الشخصي",
                style: TextStyle(fontFamily: 'Tajawal', fontSize: 10),
              ),
            ),
          ]),
      body: screens[currentIndex],
    );
  }
}
