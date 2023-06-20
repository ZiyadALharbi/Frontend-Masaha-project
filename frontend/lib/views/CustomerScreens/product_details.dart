import 'package:flutter/material.dart';
import '../../components/Customer/Product_Details/booking_button.dart';
import '../../components/Customer/Product_Details/details.dart';
import '../../components/Customer/Product_Details/details_icons.dart';
import '../../components/Customer/Product_Details/images_product.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.product});

  final Map product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Stack(
            children: [
              Images(
                image1Url: 'images/Group 71.png',
                image2Url: 'images/Group 68.png',
                image3Url: 'images/Group 72.png',
              ),
              DetailsIcons(),
            ],
          ),
          Details(
            ownerName: product['owner_username'],
            spaceName: product['type'],
            price: product['price'].toString(),
            location: 'الموقع',
            description: product['description'],
            features: product,
          ),
          const BookingButton()
        ],
      ),
    );
  }
}
