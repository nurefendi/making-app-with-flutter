import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mzayaapp/common/widget/form_divider.dart';
import 'package:mzayaapp/common/widget/social_button.dart';
import 'package:mzayaapp/features/signup/signup_form.dart';
import 'package:mzayaapp/utils/constants/sizes.dart';
import 'package:mzayaapp/utils/constants/text_string.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MazayaSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                MazayaText.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: MazayaSize.spaceBtwSections),
              SignUpForm(),
              SizedBox(height: MazayaSize.spaceBtwSections),
              FormDivider(dividerText: MazayaText.orSignUpWith.capitalize!),
              SizedBox(height: MazayaSize.spaceBtwSections),
              SocialButton(),
              SizedBox(height: MazayaSize.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}
