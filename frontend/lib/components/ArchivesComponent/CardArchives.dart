import 'package:flutter/material.dart';

class CardArchives extends StatelessWidget {
  const CardArchives({
    super.key,
    required this.NameSpace,
    this.Address,
    this.imgUrl,
  });
  final String NameSpace;

  final Address;

  final imgUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0, left: 4.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 4.0, left: 4, top: 16),
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  width: 430,
                  height: 110,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                            top: 11.0, bottom: 20, left: 20, right: 60),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 70,
                                  child: Icon(Icons.favorite,
                                      size: 35,
                                      color: Color.fromARGB(255, 255, 0, 0)),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 70,
                                  child: Icon(Icons.restore_from_trash_outlined,
                                      size: 32,
                                      color: Color.fromARGB(255, 239, 124, 0)),
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
                                    NameSpace,
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
                              image: NetworkImage(imgUrl)),
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
