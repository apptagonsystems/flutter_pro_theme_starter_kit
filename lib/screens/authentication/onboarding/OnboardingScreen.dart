import 'package:donvo/screens/authentication/onboarding/controllers/OnboardingController.dart';
import 'package:donvo/screens/authentication/onboarding/widgets/OnboardingDotNavigationWidget.dart';
import 'package:donvo/screens/authentication/onboarding/widgets/OnboardingNextButtonWidget.dart';
import 'package:donvo/screens/authentication/onboarding/widgets/OnboardingSkipBtnWidget.dart';
import 'package:donvo/screens/authentication/onboarding/widgets/OnboardingView.dart';
import 'package:donvo/utils/constants/AppDeviceUtilities.dart';
import 'package:donvo/utils/constants/AppImages.dart';
import 'package:donvo/utils/constants/AppSizes.dart';
import 'package:donvo/utils/constants/AppStrings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          // HORIZONTAL SCROLLABLE SCREEN
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnboardingView(
                image: AppImages.onBoardingImageOne,
                title: AppStrings.onBoardingTitleOne,
                subTitle: AppStrings.onBoardingSubTitleOne,
              ),
              OnboardingView(
                image: AppImages.onBoardingImageTwo,
                title: AppStrings.onBoardingTitleTwo,
                subTitle: AppStrings.onBoardingSubTitleTwo,
              ),
              OnboardingView(
                image: AppImages.onBoardingImageThree,
                title: AppStrings.onBoardingTitleThree,
                subTitle: AppStrings.onBoardingSubTitleThree,
              ),
            ],
          ),

          // SKIP BUTTON
          OnboardingSkipBtnWidget(),

          // DOT NAVIGATION SMOOTH PAGE INDICATOR
          OnboardingDotNavigationWidget(),

          // CIRCULAR BUTTON
          OnboardingNextButtonWidget()
        ],
      ),
    );
  }
}
