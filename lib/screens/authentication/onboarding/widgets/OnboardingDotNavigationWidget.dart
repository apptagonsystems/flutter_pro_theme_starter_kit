import 'package:donvo/screens/authentication/onboarding/controllers/OnboardingController.dart';
import 'package:donvo/utils/constants/AppColors.dart';
import 'package:donvo/utils/constants/AppDeviceUtilities.dart';
import 'package:donvo/utils/constants/AppSizes.dart';
import 'package:donvo/utils/helpers/AppFunctions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingDotNavigationWidget extends StatelessWidget {
  const OnboardingDotNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final darkMode = AppFunctions.isDarkMode(context: context);
    return Positioned(
      bottom: AppDeviceUtilities.getBottomNavigationBarHeight(context) + 25,
      left: AppSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: controller.totalPages,
        effect: ExpandingDotsEffect(
          activeDotColor: darkMode ? AppColors.light : AppColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
