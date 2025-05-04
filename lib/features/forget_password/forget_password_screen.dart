import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mzayaapp/features/reset_password/reset_password_screen.dart';
import 'package:mzayaapp/utils/constants/colors.dart';
import 'package:mzayaapp/utils/constants/sizes.dart';
import 'package:mzayaapp/utils/constants/text_string.dart';
import 'package:mzayaapp/utils/helper/helper_function.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MazayaHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MazayaSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                MazayaText.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: MazayaSize.spaceBtwItems),
              Text(
                MazayaText.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(height: MazayaSize.spaceBtwSections * 2),
        
              TextFormField(
                decoration: InputDecoration(
                  labelText: MazayaText.email,
                  prefixIcon: Icon(Icons.email_outlined),
                  floatingLabelStyle: TextStyle(
                    color: dark ? MazayaColors.light : MazayaColors.dark,
                  ),
                ),
              ),
              SizedBox(height: MazayaSize.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.off(ResetPasswordScreen()),
                  child: Text(MazayaText.submit),
                ),
              )
        
            ],
          ),
        ),
      ),
    );
  }
}
