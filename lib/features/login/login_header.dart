import 'package:flutter/material.dart';
import 'package:mzayaapp/utils/constants/image_strings.dart';
import 'package:mzayaapp/utils/constants/sizes.dart';
import 'package:mzayaapp/utils/constants/text_string.dart';
import 'package:mzayaapp/utils/helper/helper_function.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key
  });
  @override
  Widget build(BuildContext context) {
    final dark = MazayaHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(
            dark
                ? MazayaImages.lightAppLogo
                : MazayaImages.darkAppLogo,
          ),
          height: 150,
        ),
        Text(
          MazayaText.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: MazayaSize.sm),
        Text(
          MazayaText.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}