import 'package:flutter/material.dart';
import 'package:intro_ui/controllers/onboarding/onboarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utils/helpers/helper_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
      width: IntroHelperFunctions.screenWidth(),
      bottom: 150,
      child: Align(
        alignment: Alignment.center,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: const ExpandingDotsEffect(
            activeDotColor: Colors.orange,
            dotHeight: 10,
          ),
        ),
      ),
    );
  }
}