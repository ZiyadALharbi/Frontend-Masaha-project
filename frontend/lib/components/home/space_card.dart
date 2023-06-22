import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/colors.dart';
import '../../services/api/owner/delete_product_api.dart';
import '../../views/owner/home_screen.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({super.key, required this.card});

  final Map card;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    log(widget.card['id'].toString());
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Padding(
        padding: const EdgeInsets.only(right: 4.0, left: 4.0),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
            child: SizedBox(
              width: 410,
              height: 135,
              child: Column(
                children: [
                  Container(
                    child: SizedBox(
                      width: 390,
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 8, right: 8),
                                child: SizedBox(
                                  width: 70,
                                  height: 35,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'ر.س',
                                        style: TextStyle(
                                            fontFamily: 'Tajawal',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(0.0),
                                        child: Text(
                                            widget.card['price'].toString(),
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontFamily: 'Tajawal',
                                                fontSize: 24,
                                                color: blue,
                                                fontWeight: FontWeight.w700)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: SizedBox(
                                width: 280,
                                height: 35,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      widget.card['name'],
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontFamily: 'Tajawal',
                                          fontSize: 24,
                                          color: darkBlue,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 390,
                        height: 50,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 8, right: 8),
                                  child: SizedBox(
                                    width: 70,
                                    height: 35,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        IconButton(
                                            onPressed: () async {
                                              context
                                                  .findRootAncestorStateOfType<
                                                      HomeScreenState>()
                                                  ?.ownerProducts
                                                  .removeWhere((product) =>
                                                      product['id'] ==
                                                      widget.card['id']);
                                              context
                                                  .findRootAncestorStateOfType<
                                                      HomeScreenState>()
                                                  ?.setState(() {});
                                              deleteProduct(
                                                  id: widget.card['id']);
                                              setState(() {});
                                            },
                                            icon: Icon(
                                              FontAwesomeIcons.trashCan,
                                              color: red,
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: SizedBox(
                                  width: 280,
                                  height: 35,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        widget.card['type'],
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'Tajawal',
                                            fontSize: 16,
                                            color: darkBlue,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ),
                  Divider(
                    height: 1,
                    thickness: 0.3,
                    color: darkGrey.withOpacity(0.3),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
