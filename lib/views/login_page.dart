// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:enlighten/utils/custom_color.dart';
import 'package:enlighten/utils/custom_style.dart';
import 'package:enlighten/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/custom_string.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/custom_button.dart';
import '../widgets/my_textField.dart';

class LogInPage extends StatelessWidget {
  static const routeName = 'logIn';

  final phoneController = TextEditingController();
  final otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.bgColor,
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Dimensions.extraLargePaddingSize),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: Dimensions.heightSize8 * 8 + 2),
              Image.asset(CustomString.SpalashImage, height: 200.h, width: 200.w),
              SizedBox(height: Dimensions.heightSize8 * 6 - 4),
              Text(CustomString.STitle, style: CustomStyle.titleStyle),
              SizedBox(height: Dimensions.heightSize8 * 6 + 3),
              MyTextField(controller: phoneController, title: CustomString.STF1),
              SizedBox(height: Dimensions.heightSize8 * 3 - 2),
              MyTextField(controller: otpController, title: CustomString.STF2),
              SizedBox(height: Dimensions.heightSize8 * 3),
              InkWell(
                onTap: () => Navigator.of(context).pushReplacementNamed(BottomNavBar.routeName),
                child: CustomButon(
                  title: CustomString.SBtn,
                  isPrefixIcon: true,
                  prefixIconImage: CustomString.LogInImage,
                ),
              ),
              SizedBox(height: Dimensions.heightSize8 * 3 - 2),
              Text(
                CustomString.SOtp,
                style: CustomStyle.subTitletyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
