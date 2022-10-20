import 'package:enlighten/utils/custom_color.dart';
import 'package:flutter/material.dart';
import 'dimensions.dart';

class CustomStyle {
  static var titleStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: Dimensions.extraLargeTextSize,
    color: CustomColor.txtBlackColor,
  );

  static var textFieldStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: Dimensions.mediumTextSize,
    color: CustomColor.txtBlacNormalkColor,
  );

  static var subTitletyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: Dimensions.mediumTextSize,
    color: CustomColor.txtBlackColor,
  );

  static var primary11w400 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: Dimensions.extraSmallestTextSize,
    color: CustomColor.primaryColor.withOpacity(0.80),
  );

  static var white20w700 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: Dimensions.largeTextSize,
    color: CustomColor.whiteColor,
  );

  static var white24w700 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: Dimensions.extraLargeTextSize,
    color: CustomColor.whiteColor,
  );

  static var white16w500 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: Dimensions.mediumTextSize,
    color: CustomColor.whiteColor,
  );
}