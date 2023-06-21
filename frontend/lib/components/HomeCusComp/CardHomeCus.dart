import 'dart:convert';

import 'package:flutter/material.dart';

class CardHomeCus extends StatelessWidget {
  const CardHomeCus({super.key, required this.card, required this.imgUrl});
  final String imgUrl;
  final Map card;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Padding(
        padding: const EdgeInsets.only(right: 4.0, left: 4.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  right: 4.0, left: 4, top: 0, bottom: 16),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 198, 198, 198)
                            .withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    width: 430,
                    height: 130,
                    child: SizedBox(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 11.0, bottom: 10, left: 11, right: 10),
                              child: SizedBox(
                                width: 250,
                                child: Container(
                                  child: Column(children: [
                                    Container(
                                      child: SizedBox(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  SizedBox(
                                                    width: 80,
                                                    height: 50,
                                                    child: Text(
                                                      "${card['price'].toString()} ر.س",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: const TextStyle(
                                                        fontSize: 19,
                                                        fontFamily: 'Tajawal',
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  SizedBox(
                                                    width: 105,
                                                    height: 50,
                                                    child: Text(
                                                      card['name'].toString(),
                                                      textAlign: TextAlign.end,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: const TextStyle(
                                                        fontFamily: 'Tajawal',
                                                        fontSize: 20,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    //  _______________row tow______________
                                    Container(
                                      child: SizedBox(
                                        width: 260,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              child: SizedBox(
                                                width: 150,
                                                height: 30,
                                                child: Text(
                                                  card['type'].toString(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.end,
                                                  style: const TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 129, 129, 129),
                                                    fontSize: 17,
                                                    fontFamily: 'Tajawal',
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: SizedBox(
                                        height: 25,
                                        width: 260,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              child: const SizedBox(
                                                width: 30,
                                                height: 20,
                                                child: Text(
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  "4.5",
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 129, 129, 129),
                                                    fontSize: 17,
                                                    fontFamily: 'Tajawal',
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ]),
                                ),
                              ),
                            ),
                            Container(
                              width: 129,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(20)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  fit: BoxFit.cover,
                                  width: 129,
                                  height: 135,
                                  errorBuilder: (context, error, stackTrace) {
                                    print("=-=-=-");
                                    print(json.decode(card["images"])[0]);
                                    return Image.network(imgUrl);
                                  },
                                  image: NetworkImage(
                                      json.decode(card["images"])[0]),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
