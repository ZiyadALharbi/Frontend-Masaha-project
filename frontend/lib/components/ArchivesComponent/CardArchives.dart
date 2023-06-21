import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:frontend/services/api/customer/delete_bookmark_api.dart';

import '../../constants/colors.dart';
import '../../views/CustomerScreens/ArchivesScreens.dart';

class CardArchives extends StatefulWidget {
  const CardArchives({super.key, this.imgUrl, required this.archive});
  final Map archive;

  final imgUrl;

  @override
  State<CardArchives> createState() => _CardArchivesState();
}

class _CardArchivesState extends State<CardArchives> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0, left: 4.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 4.0, left: 4, top: 16),
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: darkGrey.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ], color: white, borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: white, borderRadius: BorderRadius.circular(30)),
                  width: 430,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 11.0, bottom: 20, left: 20, right: 60),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 70,
                                  child: IconButton(
                                    onPressed: () async {
                                      context
                                          .findRootAncestorStateOfType<
                                              ArchivesScreensState>()
                                          ?.bookmark
                                          .removeWhere((product) =>
                                              product["id"] ==
                                              widget.archive["id"]);
                                      context
                                          .findRootAncestorStateOfType<
                                              ArchivesScreensState>()
                                          ?.setState(() {});
                                      deleteBookmark(
                                          body: widget.archive["id"]);
                                    },
                                    icon: Icon(FontAwesomeIcons.trashCan,
                                        size: 25, color: red),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 12.0, right: 12, bottom: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  width: 80,
                                  child: Text(
                                    widget.archive['products']['name'],
                                    textAlign: TextAlign.end,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontFamily: 'Tajawal',
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Row(
                                children: [
                                  InkWell(
                                      onTap: () {},
                                      child: const Text(
                                        "الموقع",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontFamily: 'Tajawal',
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.cover,
                              width: 160,
                              height: 135,
                              image: NetworkImage(json
                                  .decode(widget.archive["products"]["images"])
                                  .first)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
