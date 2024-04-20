import 'package:donvo/screens/authentication/login/LoginScreen.dart';
import 'package:donvo/screens/authentication/onboarding/controllers/OnboardingController.dart';
import 'package:donvo/utils/constants/AppColors.dart';
import 'package:donvo/utils/constants/AppDeviceUtilities.dart';
import 'package:donvo/utils/constants/AppSizes.dart';
import 'package:donvo/utils/helpers/AppFunctions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnboardingNextButtonWidget extends StatelessWidget {
  const OnboardingNextButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;

    final darkMode = AppFunctions.isDarkMode(context: context);

    return Positioned(
      right: AppSizes.defaultSpace,
      bottom: AppDeviceUtilities.getBottomNavigationBarHeight(context),
      child: ElevatedButton(
        onPressed: () {
          controller.nextPage(const LoginScreen());
        },
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: darkMode ? AppColors.primary : Colors.black,
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
