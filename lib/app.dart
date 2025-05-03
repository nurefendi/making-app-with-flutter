import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mzayaapp/features/onboarding/onboarding_screen.dart';
import 'package:mzayaapp/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: MazayaAppTheme.lightTheme,
      darkTheme: MazayaAppTheme.darkTheme,
      home: OnBoardingScreen(),
    );
  }
}