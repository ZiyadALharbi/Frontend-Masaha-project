import 'package:flutter/material.dart';

class CardListOfReservations extends StatelessWidget {
  const CardListOfReservations({
    super.key,
    required this.NameSpace,
    this.ThePrice,
    this.Address,
    this.Date,
    this.imgUrl,
  });
  final String NameSpace;
  final ThePrice;
  final Address;
  final Date;
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
                  height: 130,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 11.0, bottom: 20, left: 20, right: 60),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 70,
                                  child: Text(
                                    "$ThePrice  ر.س",
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 19,
                                      fontFamily: 'Tajawal',
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                    width: 25,
                                    child: Text(Date,
                                        style: const TextStyle(
                                          fontFamily: 'Tajawal',
                                        ),
                                        overflow: TextOverflow.ellipsis))
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 12.0, right: 12, bottom: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 50,
                                  child: Text(
                                    NameSpace,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontFamily: 'Tajawal',
                                      fontSize: 20,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 39),
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
        ],
      ),
    );
  }
}
