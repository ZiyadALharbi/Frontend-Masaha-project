import 'package:flutter/material.dart';

import '../../components/ArchivesComponent/CardArchivesScreens.dart';
import '../../components/ArchivesComponent/TextArchives.dart';

class ArchivesScreens extends StatefulWidget {
  const ArchivesScreens({super.key});

  @override
  State<ArchivesScreens> createState() => _ArchivesScreensState();
}

class _ArchivesScreensState extends State<ArchivesScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: const Color.fromARGB(0, 255, 255, 255),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Directionality(
          textDirection: TextDirection.ltr,
          child: SafeArea(
            child: ListView(
              children: const [
                TextArchives(),
                CardArchivesScreens(
                  NameSpace: 'اشجار',
                  imgUrl:
                      "https://1.bp.blogspot.com/--zmpEoUGNhU/X-QXzhRR9GI/AAAAAAAABtY/TU0eL4WbHpAYah9NLlHt0lSUd5Y_zH5ngCLcBGAsYHQ/s638/images%2B-%2B2020-12-24T062310.080.jpeg",
                ),
                CardArchivesScreens(
                  NameSpace: 'كفة',
                  imgUrl:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYIa6D7LhMk7211BoEiPhRGHFRpLUEBmWjOQ&usqp=CAU",
                ),
                CardArchivesScreens(
                  NameSpace: 'او زد',
                  imgUrl:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlikCqXQoA-pxzyfKmlRNGcybiIcUid3tw1g&usqp=CAU",
                ),
                CardArchivesScreens(
                  NameSpace: 'شاي',
                  imgUrl:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRK5U33XP8b6dz4LsJ1n3ZMM_PHxFBXNmEZVQ&usqp=CAU",
                ),
                CardArchivesScreens(
                  NameSpace: 'اشجار',
                  imgUrl:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT849pUyDUb3wJUnp9UfKlB5-GYEELyXKyY4g&usqp=CAU",
                ),
                CardArchivesScreens(
                  NameSpace: 'طويق',
                  imgUrl:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXnCo8T9ziszkYjXX82k_ilnF0PVM7G9Et4g&usqp=CAU",
                ),
                CardArchivesScreens(
                  NameSpace: 'اشجار',
                  imgUrl:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6crZbInPrYLLdaYI3TMiyibyxmnnsBsyKHg&usqp=CAU",
                ),
              ],
            ),
          ),
        ));
  }
}

















//ArchivesScreens