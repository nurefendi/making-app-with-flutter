import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mzayaapp/features/onboarding/onboarding_controller.dart';
import 'package:mzayaapp/utils/constants/colors.dart';
import 'package:mzayaapp/utils/constants/sizes.dart';
import 'package:mzayaapp/utils/device/device_utility.dart';
import 'package:mzayaapp/utils/helper/helper_function.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MazayaHelperFunctions.isDarkMode(context);
    return Positioned(
      right: MazayaSize.defaultSpace,
      bottom: MazayaDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? MazayaColors.primary : MazayaColors.dark,
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
