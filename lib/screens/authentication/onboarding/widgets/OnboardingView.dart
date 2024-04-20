import 'package:flutter/material.dart';
import 'package:donvo/utils/constants/AppImages.dart';
import 'package:donvo/utils/constants/AppSizes.dart';
import 'package:donvo/utils/constants/AppStrings.dart';
import 'package:donvo/utils/helpers/AppFunctions.dart';

class OnboardingView extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  const OnboardingView({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: AppFunctions.screenWidth(context: context) * 0.8,
            height: AppFunctions.screenHeight(context: context) * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
