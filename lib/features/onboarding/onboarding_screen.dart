import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mzayaapp/features/onboarding/onboarding_controller.dart';
import 'package:mzayaapp/utils/constants/image_strings.dart';
import 'package:mzayaapp/utils/constants/text_string.dart';

import 'onboarding_dot_navigation.dart';
import 'onboarding_next_button.dart';
import 'onboarding_widget_page.dart';
import 'onboarding_widget_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: MazayaImages.onboardingImage1,
                title: MazayaText.onboardingTitle1,
                subtitle: MazayaText.onboardingSubtitle1,
              ),
              OnBoardingPage(
                image: MazayaImages.onboardingImage2,
                title: MazayaText.onboardingTitle2,
                subtitle: MazayaText.onboardingSubtitle2,
              ),
              OnBoardingPage(
                image: MazayaImages.onboardingImage3,
                title: MazayaText.onboardingTitle3,
                subtitle: MazayaText.onboardingSubtitle3,
              ),
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingDotNavigation(),
          const OnboardingNextButton(),
        ],
      ),
    );
  }
}
