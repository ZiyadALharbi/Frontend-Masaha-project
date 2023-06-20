import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:frontend/views/owner/home_screen.dart';
import '../../constants/colors.dart';
import '../../services/api/owner/delete_product_api.dart';

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
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: white),
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: ListTile( 
              title: Text(
                widget.card['name'],
                style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 20,
                    color: darkBlue,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  widget.card['type'],
                  style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 14,
                      color: darkBlue,
                      fontWeight: FontWeight.w400),
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      widget.card['price'].toString(),
                      style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 16,
                          color: blue,
                          fontWeight: FontWeight.w700),
                    ),
                    IconButton(
                        onPressed: () async {
                          context
                              .findRootAncestorStateOfType<HomeScreenState>()
                              ?.ownerProducts
                              .removeWhere((product) =>
                                  product['id'] == widget.card['id']);
                          context
                              .findRootAncestorStateOfType<HomeScreenState>()
                              ?.setState(() {});
                          deleteProduct(id: widget.card['id']);
                          setState(() {});
                        },
                        icon: const Icon(FontAwesomeIcons.trashCan))
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              height: 1,
              color: darkGrey,
              thickness: 0.1,
            ),
          ),
        ],
      ),
    );
  }
}
