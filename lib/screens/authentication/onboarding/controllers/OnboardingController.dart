import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  // VARIABLES
  final pageController = PageController();
  final totalPages = 3;
  Rx<int> currentPageIndex = 0.obs;

  // UPDATE CURRENT INDEX WHEN SCREEN SCROLL
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // JUMP TO SPECIFIC DOT SELECTED SCREEN
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // UPDATE CURRENT INDEX AND JUMP TO NEXT SCREEN
  void nextPage(Widget page) {
    if (currentPageIndex.value == (totalPages - 1)) {
      Get.to(() => page);
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // UPDATE CURRENT INDEX AND JUMP TO LAST SCREEN
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
