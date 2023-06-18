import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:frontend/views/owner/profile.dart';
import 'package:frontend/views/owner/home_screen.dart';
import '../../constants/colors.dart';
import '../../views/owner/AppointmentScreen.dart';
// import '../../views/owner/home_screen.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({super.key});

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  List screens = [
    const HomeScreen(),
    const AppointmentScreen(),
    const ProfileOwner(),
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
              icon: const Icon(Icons.calendar_month_outlined),
              title: const Text(
                "الحجوزات",
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
