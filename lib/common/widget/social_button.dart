import 'package:flutter/material.dart';
import 'package:mzayaapp/utils/constants/colors.dart';
import 'package:mzayaapp/utils/constants/image_strings.dart';
import 'package:mzayaapp/utils/constants/sizes.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: MazayaColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              image: AssetImage(MazayaImages.google),
              width: MazayaSize.iconMd,
              height: MazayaSize.iconMd,
            ),
          ),
        ),
        SizedBox(width: MazayaSize.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: MazayaColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              image: AssetImage(MazayaImages.facebook),
              width: MazayaSize.iconMd,
              height: MazayaSize.iconMd,
            ),
          ),
        ),
      ],
    );
  }
}

