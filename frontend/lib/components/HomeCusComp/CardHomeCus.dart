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
              padding: const EdgeInsets.only(right: 4.0, left: 4, top: 16),
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 11.0, bottom: 20, left: 20, right: 16),
                            child: SizedBox(
                              width: 70,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 70,
                                          child: Text(
                                            card['price'].toString(),
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              fontSize: 19,
                                              fontFamily: 'Tajawal',
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
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 11.0, right: 15, bottom: 0, left: 14),
                            child: SizedBox(
                              width: 80,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 25),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(
                                          width: 50,
                                          child: Text(
                                            card['name'],
                                            textAlign: TextAlign.end,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              fontFamily: 'Tajawal',
                                              fontSize: 20,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 4, bottom: 10),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 55,
                                          child: Text(
                                            card['type'],
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              color: Color.fromARGB(
                                                  255, 129, 129, 129),
                                              fontSize: 17,
                                              fontFamily: 'Tajawal',
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 55,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 31,
                                          child: Text(
                                            overflow: TextOverflow.ellipsis,
                                            '4.5',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 129, 129, 129),
                                              fontSize: 17,
                                              fontFamily: 'Tajawal',
                                            ),
                                          ),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image(
                                  fit: BoxFit.cover,
                                  width: 193,
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
            ),
          ],
        ),
      ),
    );
  }
}
