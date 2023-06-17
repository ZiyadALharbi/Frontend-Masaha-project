import 'package:flutter/material.dart';
import 'package:frontend/constants/colors.dart';
import '../../components/custom_button.dart';
import '../../components/home/home_nav.dart';
import '../../components/home/space_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        bottomNavigationBar: const HomeNav(),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 100, 12, 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'المساحات المتوفرة',
                    style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 24,
                        color: darkBlue,
                        fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: darkBlue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () async {},
                      child: const CustomButton(
                        buttonTitle: '     إضافة     ',
                        textSize: 12,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: darkGrey.withOpacity(0.3),

                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ], borderRadius: BorderRadius.circular(30), color: white),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CustomCard(),
                      CustomCard(),
                      CustomCard(),
                      CustomCard(),
                      CustomCard(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}



// class CardOrders extends StatelessWidget {
//   const CardOrders({super.key, required this.order});
//   final Map order;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Card(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//         elevation: 0.5,
//         child: ListTile(
//           title: Text(order["title"]),
//           subtitle: Text(order["content"]),
//           trailing: Text(order["create_at"]),
//         ),
//       ),
//     );
//   }
// }

// class OrderScreen extends StatelessWidget {
//   const OrderScreen({super.key, required this.order});

//   final Map order;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 22, 66, 136),
//         title: Text(
//           order["title"],
//         ),
//         elevation: 0,
//         leading: IconButton(
//             onPressed: Navigator.of(context).pop,
//             icon: const Icon(Icons.arrow_back)),
//       ),
//       body: ListView(children: [
//         Card(
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Text(
//                     "Order Id : ${order["id"]}",
//                     style: const TextStyle(
//                         fontSize: 16, color: Color.fromARGB(255, 23, 82, 130)),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 8,
//               ),
//               Text(
//                 order["title"],
//                 style:
//                     const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(
//                 height: 28,
//               ),
//               Text(
//                 order["content"],
//                 style: const TextStyle(fontSize: 24),
//               ),
//               const SizedBox(
//                 height: 28,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Text(
//                     order["create_at"],
//                     style: const TextStyle(
//                         fontSize: 16,
//                         color: Color.fromARGB(255, 169, 169, 169)),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ]),
//     );
//   }
// }

// for (var item in listOrders.reversed)
//               InkWell(
//                   onTap: () {
//                     context.nextPage(view: OrderScreen(order: item));
//                   },
//                   child: CardOrders(order: item)),
