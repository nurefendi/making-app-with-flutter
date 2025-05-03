import 'package:flutter/material.dart';
import 'package:mzayaapp/utils/constants/sizes.dart';

class SpacingStyle {
  SpacingStyle._();

  static const EdgeInsetsGeometry paddingWithAppbarHeight = EdgeInsets.only(
    top: MazayaSize.appBarHeight,
    left: MazayaSize.defaultSpace,
    bottom: MazayaSize.defaultSpace,
    right: MazayaSize.defaultSpace,
  );
}