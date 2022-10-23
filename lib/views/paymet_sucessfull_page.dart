// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:enlighten/widgets/bottom_nav_bar.dart';
import 'package:enlighten/widgets/main_drawer.dart';
import 'package:enlighten/widgets/my_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/custom_color.dart';
import '../utils/custom_string.dart';
import '../utils/custom_style.dart';
import '../utils/dimensions.dart';
import '../widgets/custom_button.dart';
import 'consulation_page.dart';

class PaymentSucessfullPage extends StatelessWidget {
  static const routeName = 'payment-sucessfull';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.bgColor,
      drawer: MainDrawer(),
      appBar: MyAppBar(),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: Dimensions.heightSize8 * 3),
              Container(
                alignment: Alignment.center,
                height: 552.h,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: Dimensions.heightSize8 * 4 - 1),
                    Image.asset(CustomString.paymentSucessfullImage),
                    SizedBox(height: Dimensions.heightSize8 * 3 + 4),
                    Text(
                      CustomString.PSTitleTxt.toUpperCase(),
                      style: CustomStyle.Black20w900,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: Dimensions.heightSize8 * 4 + 1),
                    InkWell(
                      onTap: () => Navigator.of(context)
                          .pushReplacementNamed(BottomNavBar.routeName),
                      child: CustomButon(
                        height: 65.h,
                        width: 240.w,
                        title: CustomString.PSBtnTxt.toUpperCase(),
                        isPrefixIcon: true,
                        prefixIconImage: CustomString.homeCallImage,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
