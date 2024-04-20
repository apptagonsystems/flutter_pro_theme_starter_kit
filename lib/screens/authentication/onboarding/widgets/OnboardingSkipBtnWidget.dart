import 'package:donvo/screens/authentication/onboarding/controllers/OnboardingController.dart';
import 'package:donvo/utils/constants/AppDeviceUtilities.dart';
import 'package:donvo/utils/constants/AppSizes.dart';
import 'package:flutter/material.dart';

class OnboardingSkipBtnWidget extends StatelessWidget {
  const OnboardingSkipBtnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;

    return Positioned(
      top: AppDeviceUtilities.getAppBarHeight(context),
      right: AppSizes.defaultSpace,
      child: TextButton(
        child: const Text("SKIP"),
        onPressed: () {
          controller.skipPage();
        },
      ),
    );
  }
}
