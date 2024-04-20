import 'package:donvo/utils/constants/AppImages.dart';
import 'package:donvo/utils/constants/AppSizes.dart';
import 'package:donvo/utils/constants/AppStrings.dart';
import 'package:donvo/utils/helpers/AppFunctions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = AppFunctions.isDarkMode(context: context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: AppSizes.appBarHeight,
            left: AppSizes.defaultSpace,
            right: AppSizes.defaultSpace,
            bottom: AppSizes.defaultSpace,
          ),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                      darkMode ? AppImages.lightAppLogo : AppImages.darkAppLogo,
                    ),
                  ),
                  Text(
                    AppStrings.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: AppSizes.sm),
                  Text(
                    AppStrings.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),

                  const SizedBox(height: AppSizes.lg),
                  // FORM
                  Form(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: AppSizes.spaceBtwSections),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.direct_right),
                            labelText: "Email",
                          ),
                        ),
                        const SizedBox(
                            height: AppSizes.spaceBetweenInputFields),
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.password_check),
                            labelText: "Password",
                          ),
                        ),
                        const SizedBox(
                          height: AppSizes.spaceBetweenInputFields / 2,
                        ),

                        // REMEMBER ME AND FORGOT PASSWORD
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // REMEMBER ME
                            Row(
                              children: [
                                Checkbox(value: true, onChanged: (value) {}),
                                const Text("Remember Me")
                              ],
                            ),

                            // FORGOT PASSWORD
                            TextButton(
                              onPressed: () {},
                              child: const Text("Forgot Password"),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("SIGN IN"),
                          ),
                        )
                      ],
                    ),
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
