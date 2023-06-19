import 'package:flutter/material.dart';
import 'package:frontend/constants/spaces.dart';
import 'package:frontend/services/extensions/next_page.dart';
// import 'package:frontend/extan/PushPage.dart';
import 'package:frontend/views/CustomerScreens/product_details.dart';

import '../../components/HomeCusComp/CardHomeCus.dart';
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
          body: Directionality(
            textDirection: TextDirection.ltr,
            child: Padding(
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
                      const Tab(
                        child: TabTitle(),
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
                  Expanded(
                    child: TabBarView(
                      children: [
                        const Column(
                          children: [
                            CardHomeCus(
                              NameSpace: 'كفة',
                              match: "4.5",
                              tybeSpace: "mating",
                              ThePrice: "١٠٠",
                              imgUrl:
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYIa6D7LhMk7211BoEiPhRGHFRpLUEBmWjOQ&usqp=CAU",
                            ),
                          ],
                        ),
                        const Column(
                          children: [
                            CardHomeCus(
                              NameSpace: 'كفة',
                              match: "4.5",
                              tybeSpace: "mating",
                              ThePrice: "١٠٠",
                              imgUrl:
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYIa6D7LhMk7211BoEiPhRGHFRpLUEBmWjOQ&usqp=CAU",
                            ),
                          ],
                        ),
                        const Column(
                          children: [
                            CardHomeCus(
                              NameSpace: 'كفة',
                              match: "4.5",
                              tybeSpace: "mating",
                              ThePrice: "١٠٠",
                              imgUrl:
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYIa6D7LhMk7211BoEiPhRGHFRpLUEBmWjOQ&usqp=CAU",
                            ),
                          ],
                        ),
                        const Column(
                          children: [
                            CardHomeCus(
                              NameSpace: 'كفة',
                              match: "4.5",
                              tybeSpace: "mating",
                              ThePrice: "١٠٠",
                              imgUrl:
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYIa6D7LhMk7211BoEiPhRGHFRpLUEBmWjOQ&usqp=CAU",
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            InkWell(
                              child: const CardHomeCus(
                                NameSpace: 'كفة',
                                match: "4.5",
                                tybeSpace: "mating",
                                ThePrice: "١٠٠",
                                imgUrl:
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYIa6D7LhMk7211BoEiPhRGHFRpLUEBmWjOQ&usqp=CAU",
                              ),
                              onTap: () {
                                context.nextPage(view: const ProductDetails());
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class TabTitle extends StatelessWidget {
  const TabTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'مكتب خاص',
      style: TextStyle(
          fontFamily: 'Tajawal',
          fontWeight: FontWeight.w800,
          fontSize: 12,
          color: black),
    );
  }
}
