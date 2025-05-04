import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mzayaapp/utils/constants/image_strings.dart';
import 'package:mzayaapp/utils/constants/sizes.dart';
import 'package:mzayaapp/utils/constants/text_string.dart';
import 'package:mzayaapp/utils/helper/helper_function.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MazayaSize.defaultSpace),
          child: Column(children: [
            Image(
              image: AssetImage(MazayaImages.successDeliverEmail),
              width: MazayaHelperFunctions.screenWidth() * 0.6,
            ),
            SizedBox(height: MazayaSize.spaceBtwSections),
            Text(
              MazayaText.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: MazayaSize.spaceBtwItems),
            Text(
              MazayaText.changeYourPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: MazayaSize.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){},
                child: Text(MazayaText.done),
              ),
            ),
            SizedBox(height: MazayaSize.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: (){},
                child: Text(MazayaText.resendEmail),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
