import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import '../../components/Customer/Product_Details/booking/booking_button.dart';
import '../../components/Customer/Product_Details/details.dart';
import '../../components/Customer/Product_Details/details_icons.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.product});

  final Map product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              ImageSlideshow(
                children: [
                  for (var item in jsonDecode(product["images"]))
                    Builder(builder: (context) {
                      return Image.network(
                        '$item',
                        fit: BoxFit.cover,
                      );
                    })
                  //     Image.network(product["images"])
                ],
              ),

              // const Images(
              //   image1Url: 'images/Group 71.png',
              //   image2Url: 'images/Group 68.png',
              //   image3Url: 'images/Group 72.png',

              // ),
              DetailsIcons(product: product),
            ],
          ),
          Details(
            ownerName: product['owner_username'],
            spaceName: product['name'],
            price: product['price'].toString(),
            location: 'الموقع',
            description: product['description'],
            features: product,
          ),
          BookingButton(product: product)
        ],
      ),
    );
  }
}
