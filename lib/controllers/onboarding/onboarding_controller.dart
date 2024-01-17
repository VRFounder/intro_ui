import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;
  void dotNavigationClick(index) {
    if(currentPageIndex.value != 2) {
      currentPageIndex.value += 1;
    }
    else {
      currentPageIndex.value = 1;
    }
    pageController.jumpToPage(index);
  }
  void nextPage() {}
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }


}