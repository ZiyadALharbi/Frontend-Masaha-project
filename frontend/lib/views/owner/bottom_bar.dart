import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../components/home/home_nav.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: white, body: const HomeNav());
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