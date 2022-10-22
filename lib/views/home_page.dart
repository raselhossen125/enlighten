// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:enlighten/utils/custom_color.dart';
import 'package:enlighten/utils/custom_string.dart';
import 'package:enlighten/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/custom_style.dart';
import '../widgets/astrology_container.dart';
import '../widgets/custom_button.dart';
import '../widgets/main_drawer.dart';
import '../widgets/my_appbar.dart';
import '../widgets/slider.dart';

class HomePage extends StatelessWidget {
  static const routeName = 'home';

  final phoneController = TextEditingController();
  final otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.bgColor,
      drawer: MainDrawer(),
      appBar: MyAppBar(),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize),
        child: ListView(
          children: [
            SizedBox(height: Dimensions.heightSize8 + 4),
            MySlider(),
            SizedBox(height: Dimensions.heightSize8 * 2 + 3),
            Container(
              // height: 342.h,
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
              child: Padding(
                padding: EdgeInsets.all(Dimensions.defaultPaddingSize),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          child: Image.asset(
                            CustomString.homePersonImage,
                            height: 70,
                            width: 70,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 22.w),
                        Expanded(
                          child: Column(
                            children: [
                              Text(CustomString.HPersonTitleTxt,
                                  style: CustomStyle.Black20w500),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: Dimensions.heightSize8 + 3),
                    Text(CustomString.HPersonDescTxt,
                        style: CustomStyle.Black15w400,
                        textAlign: TextAlign.justify),
                    SizedBox(height: Dimensions.heightSize8 * 5),
                    CustomButon(
                      height: 40.h,
                      width: 233.w,
                      title: CustomString.HPersonBtncTxt,
                      isPrefixIcon: true,
                      prefixIconImage: CustomString.homeCallImage,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: Dimensions.heightSize8 * 2 + 4),
            Container(
              height: 297.h,
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
              child: Padding(
                padding: EdgeInsets.all(Dimensions.defaultPaddingSize),
                child: Column(
                  children: [
                    Text(CustomString.HTitlecTxt,
                        style: CustomStyle.Black20w700),
                    SizedBox(height: Dimensions.heightSize8 * 4 - 2),
                    Row(
                      children: [
                        Expanded(
                          child: AstrologyContainer(
                            image: CustomString.homeBusinessmage,
                            title: CustomString.HAstrologyBusinessTxt,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: AstrologyContainer(
                            image: CustomString.homeFinansialImage,
                            title: CustomString.HAstrologyFinansialTxt,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Dimensions.heightSize8),
                    Row(
                      children: [
                        Expanded(
                          child: AstrologyContainer(
                            image: CustomString.homePropertyImage,
                            title: CustomString.HAstrologyPropertyTxt,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: AstrologyContainer(
                            image: CustomString.homePersonalImage,
                            title: CustomString.HAstrologyPersonalTxt,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: Dimensions.heightSize8 * 3 - 3),
            Container(
              alignment: Alignment.center,
              height: 251.h,
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(CustomString.HVideoTxt,
                          style: CustomStyle.Black20w700),
                          SizedBox(height: Dimensions.heightSize8 * 2),
                      Image.asset(CustomString.homeVideoImage),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimensions.heightSize8 * 2 + 3),
            Container(
              alignment: Alignment.center,
              height: 251.h,
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(CustomString.HShopTxt, style: CustomStyle.Black20w700),
                  Image.asset(CustomString.homeShopOnlineImage),
                ],
              ),
            ),
            SizedBox(height: Dimensions.heightSize8 * 3 + 2),
          ],
        ),
      ),
    );
  }
}
