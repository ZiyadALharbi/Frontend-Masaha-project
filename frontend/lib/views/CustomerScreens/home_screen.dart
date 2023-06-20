import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:frontend/services/extensions/nav.dart';
import 'package:frontend/views/CustomerScreens/product_details.dart';
import '../../constants/spaces.dart';
import '../../components/HomeCusComp/CardHomeCus.dart';
import '../../constants/colors.dart';
import '../../services/api/owner/display_product_api.dart';

class CustomerHome extends StatefulWidget {
  const CustomerHome({super.key});

  @override
  State<CustomerHome> createState() => _CustomerHomeState();
}

class _CustomerHomeState extends State<CustomerHome> {
  List prodcuts = [];

  @override
  void initState() {
    super.initState();
    getProducts();
  }

  getProducts() async {
    final response = await displayOwnerProduct();
    if (response.statusCode == 200) {
      try {
        prodcuts = json.decode(response.body);
        setState(() {});
      } catch (error) {
        print(error);
      }
    }
  }

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
                  tabs: const [
                    Tab(child: TabTitle(spaceType: 'مساحة مشتركة')),
                    Tab(child: TabTitle(spaceType: 'مساحة خاصة')),
                    Tab(child: TabTitle(spaceType: 'مكتب خاص')),
                    Tab(child: TabTitle(spaceType: 'قاعة اجتماعات')),
                    Tab(child: TabTitle(spaceType: 'ورشة عمل')),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      ListView(
                        children: [
                          for (var item in prodcuts)
                            item['type'] == 'المساحة الأولى'
                                ? InkWell(
                                    child: CardHomeCus(
                                        card: item,
                                        imgUrl:
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYIa6D7LhMk7211BoEiPhRGHFRpLUEBmWjOQ&usqp=CAU'),
                                    onTap: () {
                                      context.nextPage(
                                          view: ProductDetails(product: item));
                                      print(item);
                                      setState(() {});
                                    })
                                : const SizedBox.shrink()
                        ],
                      ),
                      ListView(
                        children: [
                          for (var item in prodcuts)
                            item['type'] == 'المساحة الثانية'
                                ? InkWell(
                                    child: CardHomeCus(
                                        card: item,
                                        imgUrl:
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYIa6D7LhMk7211BoEiPhRGHFRpLUEBmWjOQ&usqp=CAU'),
                                    onTap: () {
                                      context.nextPage(
                                          view: ProductDetails(product: item));
                                      print(item);
                                      setState(() {});
                                    })
                                : const SizedBox.shrink()
                        ],
                      ),
                      ListView(
                        children: [
                          for (var item in prodcuts)
                            item['type'] == 'المساحة الثالثة'
                                ? InkWell(
                                    child: CardHomeCus(
                                        card: item,
                                        imgUrl:
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYIa6D7LhMk7211BoEiPhRGHFRpLUEBmWjOQ&usqp=CAU'),
                                    onTap: () {
                                      context.nextPage(
                                          view: ProductDetails(product: item));
                                      print(item);
                                      setState(() {});
                                    })
                                : const SizedBox.shrink()
                        ],
                      ),
                      ListView(
                        children: [
                          for (var item in prodcuts)
                            item['type'] == 'المساحة الرابعة'
                                ? InkWell(
                                    child: CardHomeCus(
                                        card: item,
                                        imgUrl:
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYIa6D7LhMk7211BoEiPhRGHFRpLUEBmWjOQ&usqp=CAU'),
                                    onTap: () {
                                      context.nextPage(
                                          view: ProductDetails(product: item));
                                      print(item);
                                      setState(() {});
                                    })
                                : const SizedBox.shrink()
                        ],
                      ),
                      ListView(
                        children: [
                          for (var item in prodcuts)
                            item['type'] == 'المساحة الخامسة'
                                ? InkWell(
                                    child: CardHomeCus(
                                        card: item,
                                        imgUrl:
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYIa6D7LhMk7211BoEiPhRGHFRpLUEBmWjOQ&usqp=CAU'),
                                    onTap: () {
                                      context.nextPage(
                                          view: ProductDetails(product: item));
                                      print(item);
                                      setState(() {});
                                    })
                                : const SizedBox.shrink()
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class TabTitle extends StatelessWidget {
  const TabTitle({
    super.key,
    required this.spaceType,
  });

  final String spaceType;

  @override
  Widget build(BuildContext context) {
    return Text(
      spaceType,
      style: TextStyle(
          fontFamily: 'Tajawal',
          fontWeight: FontWeight.w800,
          fontSize: 12,
          color: black),
    );
  }
}
