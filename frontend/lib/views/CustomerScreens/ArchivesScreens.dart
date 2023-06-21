// ignore_for_file: file_names

import 'dart:convert';
import 'package:flutter/material.dart';
import '../../components/ArchivesComponent/CardArchives.dart';
import '../../components/ArchivesComponent/TextArchives.dart';
import '../../constants/colors.dart';
import '../../services/api/customer/display_bookmark.dart';

class ArchivesScreens extends StatefulWidget {
  const ArchivesScreens({super.key});

  @override
  State<ArchivesScreens> createState() => ArchivesScreensState();
}

class ArchivesScreensState extends State<ArchivesScreens> {
  List bookmark = [];

  @override
  void initState() {
    super.initState();
    getProducts();
  }

  getProducts() async {
    final response = await displayBookmark();
    if (response.statusCode == 200) {
      bookmark = json.decode(response.body);
      print(bookmark);
    } else {
      print(bookmark);
      print(response.body);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: white,
          shadowColor: const Color.fromARGB(0, 255, 255, 255),
        ),
        backgroundColor: white,
        body: Directionality(
          textDirection: TextDirection.ltr,
          child: SafeArea(
            child: ListView(
              children: [
                const TextArchives(),
                for (Map archive in bookmark)
                  archive.isEmpty
                      ? const SizedBox.shrink()
                      : CardArchives(
                          imgUrl:
                              "https://1.bp.blogspot.com/--zmpEoUGNhU/X-QXzhRR9GI/AAAAAAAABtY/TU0eL4WbHpAYah9NLlHt0lSUd5Y_zH5ngCLcBGAsYHQ/s638/images%2B-%2B2020-12-24T062310.080.jpeg",
                          archive: archive,
                        ),
              ],
            ),
          ),
        ));
  }
}
