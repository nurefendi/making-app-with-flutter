import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mzayaapp/common/styles/spacing_style.dart';
import 'package:mzayaapp/common/widget/form_divider.dart';
import 'package:mzayaapp/common/widget/social_button.dart';
import 'package:mzayaapp/utils/constants/sizes.dart';
import 'package:mzayaapp/utils/constants/text_string.dart';

import 'login_form.dart';
import 'login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingWithAppbarHeight,
          child: Column(
            children: [
              LoginHeader(),
              LoginForm(),
              FormDivider(dividerText: MazayaText.orSignInWith.capitalize!,),
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


