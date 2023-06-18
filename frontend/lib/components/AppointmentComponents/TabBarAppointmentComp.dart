import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import 'TabInTabBar.dart';

TabBar TabBarAppointmentComp() {
  return TabBar(
    isScrollable: true,
    physics: const ClampingScrollPhysics(),
    unselectedLabelColor: black,
    indicator: BoxDecoration(
      color: blueLight,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: blueLight),
    ),
    tabs: const [
      Tab(
          child: Tab_In_TabBar(
        Deys: "الاحد",
      )),
      Tab(
          child: Tab_In_TabBar(
        Deys: "الاثنين",
      )),
      Tab(
          child: Tab_In_TabBar(
        Deys: "الثلثاء",
      )),
      Tab(
          child: Tab_In_TabBar(
        Deys: "الاربعاء",
      )),
      Tab(
        child: Tab_In_TabBar(
          Deys: "الخميس",
        ),
      ),
      Tab(
          child: Tab_In_TabBar(
        Deys: "الجمعة",
      )),
      Tab(
          child: Tab_In_TabBar(
        Deys: "السبت",
      )),
    ],
  );
}
