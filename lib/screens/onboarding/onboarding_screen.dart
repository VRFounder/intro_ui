import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro_ui/controllers/onboarding/onboarding_controller.dart';
import 'package:intro_ui/utils/constants/image_strings.dart';
import 'package:intro_ui/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'onboarding_dot_navigation.dart';
import 'onboarding_page.dart';
import 'onboarding_skip_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: const [
                OnBoardingPage(
                  image: "assets/images/onboard/image_1.png",
                  title: 'Learn from experts',
                  subTitle: 'Select from top instructors around the world',
                ),
                OnBoardingPage(
                  image: "assets/images/onboard/image_2.png",
                  title: 'Learn from experts',
                  subTitle: 'Select from top instructors around the world',
                ),
                OnBoardingPage(
                  image: "assets/images/onboard/image_3.png",
                  title: 'Learn from experts',
                  subTitle: 'Select from top instructors around the world',
                ),
              ],
            ),
            const OnBoardingDotNavigation(),
            const OnBoardingSkipButton(),
          ],
        ),
      ),
    );
  }
}


