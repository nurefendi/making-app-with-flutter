import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mzayaapp/features/signup/signup_term_of_condition.dart';
import 'package:mzayaapp/utils/constants/colors.dart';
import 'package:mzayaapp/utils/constants/sizes.dart';
import 'package:mzayaapp/utils/constants/text_string.dart';
import 'package:mzayaapp/utils/helper/helper_function.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final dark = MazayaHelperFunctions.isDarkMode(context);
    int genderSelected = 1;
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: MazayaText.firstName,
                    prefixIcon: Icon(Iconsax.user),
                    floatingLabelStyle: TextStyle(
                      color:
                      dark
                          ? MazayaColors.light
                          : MazayaColors.dark,
                    ),
                  ),
                ),
              ),
              SizedBox(width: MazayaSize.spaceBetweenInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: MazayaText.lastName,
                    prefixIcon: Icon(Iconsax.user),
                    floatingLabelStyle: TextStyle(
                      color:
                      dark
                          ? MazayaColors.light
                          : MazayaColors.dark,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: MazayaSize.spaceBetweenInputFields),
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: MazayaText.username,
              prefixIcon: Icon(Iconsax.user_edit),
              floatingLabelStyle: TextStyle(
                color: dark ? MazayaColors.light : MazayaColors.dark,
              ),
            ),
          ),
          SizedBox(height: MazayaSize.spaceBetweenInputFields),
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: MazayaText.email,
              prefixIcon: Icon(Icons.email_outlined),
              floatingLabelStyle: TextStyle(
                color: dark ? MazayaColors.light : MazayaColors.dark,
              ),
            ),
          ),
          SizedBox(height: MazayaSize.spaceBetweenInputFields),
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: MazayaText.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
              floatingLabelStyle: TextStyle(
                color: dark ? MazayaColors.light : MazayaColors.dark,
              ),
            ),
          ),
          SizedBox(height: MazayaSize.spaceBetweenInputFields),
          SizedBox(
            width: double.infinity,
            child: SegmentedButton(
              segments: const <ButtonSegment<int>>[
                ButtonSegment(
                  value: 1,
                  label: Text(MazayaText.man),
                  icon: Icon(Icons.man_outlined),
                ),
                ButtonSegment(
                  value: 0,
                  label: Text(MazayaText.woman),
                  icon: Icon(Icons.woman_outlined),
                ),
              ],
              selected: <int>{genderSelected},
              onSelectionChanged: (Set<int> newSelection) {},
            ),
          ),
          SizedBox(height: MazayaSize.spaceBetweenInputFields),
          Row(
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Checkbox(value: true, onChanged: (value) {}),
              ),
              SizedBox(width: MazayaSize.spaceBtwItems),
              SignUpTermOfCondition(),
            ],
          ),
          SizedBox(height: MazayaSize.spaceBetweenInputFields),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(MazayaText.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}

