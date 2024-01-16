import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class greencontainer extends StatelessWidget {
  const greencontainer({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 320, left: 170),
      child: SmoothPageIndicator(
        controller: pageController,
        count: 4,
        effect: SlideEffect(
          dotHeight: 10,
          dotWidth: 10,
          activeDotColor: Colors.green,
        ),
      ),
    );
  }
}