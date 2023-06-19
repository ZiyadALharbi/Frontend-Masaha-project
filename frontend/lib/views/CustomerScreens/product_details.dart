import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:frontend/constants/colors.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Stack(
            children: [
              Images(),
              MyIcons(),
              Positioned(child: Details()),
            ],
          ),
        ],
      ),
    );
  }
}

class Images extends StatelessWidget {
  const Images({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      height: MediaQuery.of(context).size.height * 0.30,
      indicatorColor: Colors.white,
      indicatorRadius: 5,
      children: const [
        Image(
          image: AssetImage('images/Group 71.png'),
        ),
        Image(
          image: AssetImage('images/Group 68.png'),
        ),
        Image(
          image: AssetImage('images/Group 72.png'),
        ),
      ],
    );
  }
}

class MyIcons extends StatelessWidget {
  const MyIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 52, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            onPressed: () {},
            mini: true,
            elevation: 0,
            backgroundColor: Colors.white,
            child: const Icon(
              Icons.close_outlined,
              color: Colors.black,
            ),
          ),
          Row(
            children: [
              const SizedBox(width: 8),
              FloatingActionButton(
                onPressed: () {},
                mini: true,
                elevation: 0,
                backgroundColor: Colors.white,
                child: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.black,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkBlue,
      height: 100,
    );
  }
}
