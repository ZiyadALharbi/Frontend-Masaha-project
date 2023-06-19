import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import '../../../constants/colors.dart';

class Images extends StatelessWidget {
  const Images({
    super.key,
    required this.image1Url,
    required this.image2Url,
    required this.image3Url,
  });
// we need for loop here for images
  final String image1Url;
  final String image2Url;
  final String image3Url;
  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.36,
      indicatorBackgroundColor: white,
      children: [
        Image(
          image: AssetImage(image1Url),
        ),
        Image(
          image: AssetImage(image2Url),
        ),
        Image(
          image: AssetImage(image3Url),
        ),
      ],
    );
  }
}
