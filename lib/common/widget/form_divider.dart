import 'package:flutter/material.dart';
import 'package:mzayaapp/utils/constants/colors.dart';
import 'package:mzayaapp/utils/helper/helper_function.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = MazayaHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? MazayaColors.darkerGrey : MazayaColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? MazayaColors.darkerGrey : MazayaColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}

