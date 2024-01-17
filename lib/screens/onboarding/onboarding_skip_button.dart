import 'package:flutter/material.dart';
import 'package:intro_ui/controllers/onboarding/onboarding_controller.dart';

import '../../utils/helpers/helper_functions.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
      width: IntroHelperFunctions.screenWidth(),
      bottom: 130,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
        child: Align(
          alignment: Alignment.bottomRight,
          child: TextButton(
            onPressed: controller.skipPage,
            child: Text(
              "Skip",
              style: TextStyle(fontSize: 18, color: Colors.orange.shade800),
            ),
          ),
        ),
      ),
    );
  }
}
