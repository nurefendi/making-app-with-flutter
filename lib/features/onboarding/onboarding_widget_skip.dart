import 'package:flutter/material.dart';
import 'package:mzayaapp/features/onboarding/onboarding_controller.dart';
import 'package:mzayaapp/utils/constants/sizes.dart';
import 'package:mzayaapp/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MazayaDeviceUtils.getAppBarHeight(),
      right: MazayaSize.defaultSpace,
      child: TextButton(onPressed: () => OnBoardingController.instance.skipPage(), child: const Text("Skip")),
    );
  }
}
