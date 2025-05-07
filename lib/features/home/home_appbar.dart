import 'package:flutter/material.dart';
import 'package:mzayaapp/utils/constants/colors.dart';
import 'package:mzayaapp/utils/constants/text_string.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          MazayaText.homeAppBarTitle,
          style: Theme.of(context).textTheme.labelMedium!.apply(
            color: MazayaColors.grey,
          ),
        ),
        Text(
          MazayaText.homeAppBarSubtitle,
          style: Theme.of(context).textTheme.headlineSmall!
              .apply(color: MazayaColors.white),
        ),
      ],
    );
  }
}
