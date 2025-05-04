import 'package:flutter/material.dart';
import 'package:mzayaapp/common/styles/spacing_style.dart';
import 'package:mzayaapp/utils/constants/sizes.dart';
import 'package:mzayaapp/utils/constants/text_string.dart';
import 'package:mzayaapp/utils/helper/helper_function.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.onPressed,
  });

  final String image, title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingWithAppbarHeight * 2,
          child: Column(
            children: [
              Image(
                image: AssetImage(image),
                width: MazayaHelperFunctions.screenWidth() * 0.6,
              ),
              SizedBox(height: MazayaSize.spaceBtwSections),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MazayaSize.spaceBtwItems),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MazayaSize.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: Text(MazayaText.continueText),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
