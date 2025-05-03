import 'package:flutter/material.dart';
import 'package:mzayaapp/utils/constants/colors.dart';
import 'package:mzayaapp/utils/constants/text_string.dart';
import 'package:mzayaapp/utils/helper/helper_function.dart';


class SignUpTermOfCondition extends StatelessWidget {
  const SignUpTermOfCondition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MazayaHelperFunctions.isDarkMode(context);
    return Flexible(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: '${MazayaText.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            TextSpan(
              text: '${MazayaText.privacyPolicy} ',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? MazayaColors.white : MazayaColors.primary
              ),
            ),
            TextSpan(
              text: ' ${MazayaText.and} ',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            TextSpan(
              text: '${MazayaText.termOfUse} ',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? MazayaColors.white : MazayaColors.primary
              ),
            ),
          ],
        ),
      ),
    );
  }
}