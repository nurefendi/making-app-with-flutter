
import 'package:flutter/material.dart';
import 'package:mzayaapp/utils/constants/sizes.dart';
import 'package:mzayaapp/utils/helper/helper_function.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MazayaSize.defaultSpace),
      child: Column(
        children: [
          Image(
            width: MazayaHelperFunctions.screenWidth() * 0.8,
            height: MazayaHelperFunctions.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: MazayaSize.spaceBtwItems),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
