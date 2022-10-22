// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:enlighten/widgets/main_drawer.dart';
import 'package:enlighten/widgets/my_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/custom_color.dart';
import '../utils/custom_string.dart';
import '../utils/custom_style.dart';
import '../utils/dimensions.dart';
import '../widgets/custom_button.dart';

class ProfilePage extends StatelessWidget {
  static const routeName = 'profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: MyAppBar(),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize),
        child: Column(
          children: [
            SizedBox(height: Dimensions.heightSize8 * 3),
            Container(
              alignment: Alignment.center,
              height: 324.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1.0,
                        blurRadius: 1.0)
                  ],
                  color: CustomColor.whiteColor),
              child: Column(
                children: [
                  SizedBox(height: Dimensions.heightSize8 * 4 - 1),
                  Image.asset(CustomString.drawerProfileImage,
                      color: CustomColor.primaryColor),
                  SizedBox(height: Dimensions.heightSize8 * 4 - 3),
                  Text(CustomString.PhoneTxt, style: CustomStyle.primary24w700),
                  SizedBox(height: Dimensions.heightSize8 * 10),
                  CustomButon(
                    width: 211.w,
                    titleColor: CustomColor.whiteColor,
                    title: CustomString.DSignOutxt,
                    isPrefixIcon: true,
                    prefixIconImage: CustomString.LogInImage,
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
