import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:frontend/services/extensions/nav.dart';
import 'package:frontend/views/CustomerScreens/product_details.dart';
import 'package:rive/rive.dart';
import '../../constants/spaces.dart';
import '../../components/HomeCusComp/CardHomeCus.dart';
import '../../constants/colors.dart';
import '../../services/api/customer/display_product_api.dart';

class CustomerHome extends StatefulWidget {
  const CustomerHome({super.key});

  @override
  State<CustomerHome> createState() => _CustomerHomeState();
}

class _CustomerHomeState extends State<CustomerHome> {
  List prodcuts = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      getProducts();
    });
  }

  getProducts() async {
    final response = await displayProduct();
    if (response.statusCode == 200) {
      try {
        print(await json.decode(response.body));
        print("----1");
        prodcuts = await json.decode(response.body);
        setState(() {
          _isLoading = false;
        });
      } catch (error) {
        print(error);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        animationDuration: const Duration(milliseconds: 150),
        length: 5,
        child: Scaffold(
          backgroundColor: white,
          body: Padding(
            padding: const EdgeInsets.fromLTRB(0, 103, 0, 0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('مرحبا',
                          style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontWeight: FontWeight.w700,
                              fontSize: 36,
                              color: darkBlue)),
                      // const SizedBox(
                      //   height: 50,
                      //   width: 50,
                      //   child: RiveAnimation.asset(
                      //       'assets/animations/trash-can.riv'),
                      // ),
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
                kVSpace32,
                TabBar(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 0, bottom: 0),
                  isScrollable: true,
                  physics: const ClampingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  unselectedLabelColor: black,
                  indicator: BoxDecoration(
                    color: orange.withOpacity(0.80),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  labelPadding: const EdgeInsets.only(
                      left: 16, right: 16, top: 0, bottom: 0),
                  tabs: const [
                    Tab(child: TabTitle(spaceType: 'مساحة مشتركة')),
                    Tab(child: TabTitle(spaceType: 'مساحة خاصة')),
                    Tab(child: TabTitle(spaceType: 'مكتب خاص')),
                    Tab(child: TabTitle(spaceType: 'قاعة اجتماعات')),
                    Tab(child: TabTitle(spaceType: 'ورشة عمل')),
                  ],
                ),
                if (_isLoading)
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 150),
                    child: SizedBox(
                      height: 200,
                      width: 200,
                      child: RiveAnimation.asset(
                          'assets/animations/ui_loader.riv'),
                    ),
                  ),
                Expanded(
                  child: TabBarView(
                    children: [
                      ListView(
                        children: [
                          for (Map item in prodcuts)
                            item['type'] == 'مساحة مشتركة'
                                ? InkWell(
                                    child: CardHomeCus(
                                        card: item,
                                        imgUrl:
                                            item["images"].toString() ?? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYIa6D7LhMk7211BoEiPhRGHFRpLUEBmWjOQ&usqp=CAU"),
                                    onTap: () {
                                      context.nextPage(
                                          view: ProductDetails(product: item));

                                      setState(() {});
                                    })
                                : const SizedBox.shrink()
                        ],
                      ),
                      ListView(
                        children: [
                          for (var item in prodcuts)
                            item['type'] == 'مساحة خاصة'
                                ? InkWell(
                                    child: CardHomeCus(
                                        card: item,
                                        imgUrl:
                                            'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_1010/https://ico.org.sa/wp-content/uploads/2021/04/camels-1-e1618841285447.png'),
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
                            item['type'] == 'مكتب خاص'
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
                            item['type'] == 'قاعة اجتماعات'
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
                            item['type'] == 'ورشة عمل'
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
          fontWeight: FontWeight.w700,
          fontSize: 15,
          color: black),
    );
  }
}
