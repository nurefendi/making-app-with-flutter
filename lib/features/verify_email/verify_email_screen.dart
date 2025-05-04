import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mzayaapp/common/widget/success_screen.dart';
import 'package:mzayaapp/features/login/login_screen.dart';
import 'package:mzayaapp/utils/constants/image_strings.dart';
import 'package:mzayaapp/utils/constants/sizes.dart';
import 'package:mzayaapp/utils/constants/text_string.dart';
import 'package:mzayaapp/utils/helper/helper_function.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MazayaSize.defaultSpace),
          child: Column(
            children: [
              Image(
                image: AssetImage(MazayaImages.verifyEmailLogo),
                width: MazayaHelperFunctions.screenWidth() * 0.6,
              ),
              SizedBox(height: MazayaSize.spaceBtwSections),
              Text(
                MazayaText.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MazayaSize.spaceBtwItems),
              Text(
                "support@mazaya.biz.id",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MazayaSize.spaceBtwItems),
              Text(
                MazayaText.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MazayaSize.spaceBtwSections),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed:
                      () => Get.to(
                        SuccessScreen(
                          image: MazayaImages.successCreateAccount,
                          title: MazayaText.yourAccountCreatedTitle,
                          subtitle: MazayaText.yourAccountCreateSubTitle,
                          onPressed: () => Get.to(LoginScreen()),
                        ),
                      ),
                  child: Text(MazayaText.continueText),
                ),
              ),
              SizedBox(height: MazayaSize.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(MazayaText.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
