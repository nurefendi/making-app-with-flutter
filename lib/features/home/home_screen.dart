import 'package:flutter/material.dart';
import 'package:mzayaapp/common/widget/appbar.dart';
import 'package:mzayaapp/common/widget/cart_counter_icon.dart';
import 'package:mzayaapp/common/widget/primary_header_container.dart';
import 'package:mzayaapp/utils/constants/colors.dart';

import 'home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  MazayaAppBar(
                    title: HomeAppBar(),
                    actions: [
                      CartCounterIcon(onPressed: (){}, iconColor: MazayaColors.white,),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}