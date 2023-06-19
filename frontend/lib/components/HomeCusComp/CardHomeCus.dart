// import 'package:flutter/material.dart';

// class CardListOfReservations extends StatelessWidget {
//   const CardListOfReservations({
//     super.key,
//     required this.NameSpace,
//     required this.ThePrice,
//     required this.match,
//     required this.tybeSpace,
//     required this.imgUrl,
//   });
//   final String NameSpace;
//   final String ThePrice;
//   final String match;
//   final String tybeSpace;
//   final String imgUrl;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 4.0, left: 4.0),
//       child: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(right: 4.0, left: 4, top: 16),
//             child: Container(
//               decoration: BoxDecoration(boxShadow: [
//                 BoxShadow(
//                   color:
//                       const Color.fromARGB(255, 198, 198, 198).withOpacity(0.5),
//                   spreadRadius: 2,
//                   blurRadius: 4,
//                   offset: const Offset(0, 3), // changes position of shadow
//                 ),
//               ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
//               child: Padding(
//                 padding: const EdgeInsets.all(3.0),
//                 child: Container(
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(30)),
//                   width: 430,
//                   height: 130,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(
//                             top: 11.0, bottom: 20, left: 20, right: 60),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               children: [
//                                 SizedBox(
//                                   width: 70,
//                                   child: Text(
//                                     "$ThePrice  ر.س",
//                                     overflow: TextOverflow.ellipsis,
//                                     style: const TextStyle(
//                                       fontSize: 19,
//                                       fontFamily: 'Tajawal',
//                                     ),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(
//                             top: 12.0, right: 10, bottom: 0),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.end,
//                               children: [
//                                 SizedBox(
//                                   width: 50,
//                                   child: Text(
//                                     NameSpace,
//                                     textAlign: TextAlign.end,
//                                     overflow: TextOverflow.ellipsis,
//                                     style: const TextStyle(
//                                       fontFamily: 'Tajawal',
//                                       fontSize: 20,
//                                     ),
//                                   ),
//                                 )
//                               ],
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(top: 4, bottom: 0),
//                               child: Row(
//                                 children: [
//                                   InkWell(
//                                       onTap: () {},
//                                       child: Text(
//                                         tybeSpace,
//                                         style: TextStyle(
//                                           fontSize: 17,
//                                           fontFamily: 'Tajawal',
//                                         ),
//                                       ))
//                                 ],
//                               ),
//                             ),
//                             SizedBox(
//                               width: 55,
//                               child: Row(
//                                 children: [
//                                   SizedBox(
//                                     width: 31,
//                                     child: Text(
//                                       overflow: TextOverflow.ellipsis,
//                                       match,
//                                       style: TextStyle(
//                                         fontSize: 17,
//                                         fontFamily: 'Tajawal',
//                                       ),
//                                     ),
//                                   ),
//                                   Icon(Icons.star,color: Colors.amber,)
//                                 ],
//                               ),
//                             ),
                           
//                           ],
//                         ),
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20)),
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(20),
//                           child: Image(
//                               fit: BoxFit.cover,
//                               width: 193,
//                               height: 135,
//                               image: NetworkImage(imgUrl)),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
