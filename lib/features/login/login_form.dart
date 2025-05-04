import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mzayaapp/features/forget_password/forget_password_screen.dart';
import 'package:mzayaapp/features/signup/signup_screen.dart';
import 'package:mzayaapp/utils/constants/colors.dart';
import 'package:mzayaapp/utils/constants/sizes.dart';
import 'package:mzayaapp/utils/constants/text_string.dart';
import 'package:mzayaapp/utils/helper/helper_function.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MazayaHelperFunctions.isDarkMode(context);
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: MazayaSize.spaceBtwSections,
        ),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                labelText: MazayaText.email,
                floatingLabelStyle: TextStyle(
                  color: dark ? MazayaColors.light : MazayaColors.dark,
                ),
              ),
            ),
            SizedBox(height: MazayaSize.spaceBetweenInputFields),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: MazayaText.password,
                suffixIcon: Icon(Iconsax.eye_slash),
                floatingLabelStyle: TextStyle(
                  color: dark ? MazayaColors.light : MazayaColors.dark,
                ),
              ),
            ),
            SizedBox(height: MazayaSize.spaceBetweenInputFields / 2),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text(MazayaText.rememberMe),
                  ],
                ),
                TextButton(
                  onPressed: () => Get.to(ForgetPasswordScreen()),
                  child: const Text(MazayaText.forgetPassword),
                ),
              ],
            ),

            const SizedBox(height: MazayaSize.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(MazayaText.signIn),
              ),
            ),
            const SizedBox(height: MazayaSize.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignUpScreen()),
                child: Text(MazayaText.createAccount),
              ),
            ),
            const SizedBox(height: MazayaSize.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}
