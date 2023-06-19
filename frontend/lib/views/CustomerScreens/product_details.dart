import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:frontend/constants/colors.dart';
import 'package:frontend/constants/spaces.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Images(),
              MyIcons(),
            ],
          ),
          Details(),
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
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.36,
      indicatorBackgroundColor: white,
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
            heroTag: null,
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
                heroTag: null,
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
      color: lightBlue,
      child: Column(
        children: [
          kVSpace8,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "المساحة",
                  style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w700,
                      fontSize: 36,
                      color: darkBlue),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "إسم المالك",
                        style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: orange),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "500ر.س",
                        style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: darkBlue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "المكان",
                  style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: lightGrey),
                ),
              ],
            ),
          ),
          const Divider(),
          const Column(
            children: [
              Text(
                  "بْجَدْ هَوَّزْ حُطِّي كَلَمُنْ سَعْفُصْ قُرشت ثخذ ضظغ أَبْجَدْ هَوَّزْبْجَدْ هَوَّزْ حُطِّي كَلَمُنْ سَعْفُصْ قُرشت ثخذ ضظغ أَبْجَدْ هَوَّزْبْجَدْ هَوَّزْ حُطِّي كَلَمُنْ سَعْفُصْ قُرشت ثخذ ضظغ أَبْجَدْ هَوَّزْبْجَدْ هَوَّزْ حُطِّي كَلَمُنْ سَعْفُصْ قُرشت ثخذ ضظغ أَبْجَدْ هَوَّزْبْجَدْ هَوَّزْ حُطِّي بْجَدْ هَوَّزْ حُطِّي كَلَمُنْ سَعْفُصْ قُرشت ثخذ ضظغ أَبْجَدْ هَوَّزْكَلَمُنْ سَعْفُصْ قُرشت ثخذ ضظغ أَبْجَدْ هَوَّزْ")
            ],
          )
        ],
      ),
    );
  }
}
