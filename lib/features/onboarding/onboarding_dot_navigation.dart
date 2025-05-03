import 'package:flutter/material.dart';
import 'package:mzayaapp/features/onboarding/onboarding_controller.dart';
import 'package:mzayaapp/utils/constants/colors.dart';
import 'package:mzayaapp/utils/constants/sizes.dart';
import 'package:mzayaapp/utils/device/device_utility.dart';
import 'package:mzayaapp/utils/helper/helper_function.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MazayaHelperFunctions.isDarkMode(context);
    final controller = OnBoardingController.instance;
    return Positioned(
      bottom: MazayaDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: MazayaSize.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? MazayaColors.dark : MazayaColors.light,
          dotHeight: 6,
        ),
      ),
    );
  }
}
