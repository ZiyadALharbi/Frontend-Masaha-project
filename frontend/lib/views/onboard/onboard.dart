import 'package:flutter/material.dart';
import 'package:frontend/constants/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'page_onboard.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
        backgroundColor: white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 500,
              child: PageView(
                controller: controller,
                children: const [
                  PageOnboard(image: 'images/Group 71.png'),
                  PageOnboard(image: 'images/Group 68.png'),
                  PageOnboard(image: 'images/Group 72.png'),
                ],
              ),
            ),
            SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: ExpandingDotsEffect(
                  activeDotColor: darkBlue,
                  dotColor: darkBlue,
                  dotHeight: 12,
                  dotWidth: 12),
            )
          ],
        ));
  }
}
