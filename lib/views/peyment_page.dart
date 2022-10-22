// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:enlighten/utils/custom_color.dart';
import 'package:enlighten/utils/custom_string.dart';
import 'package:enlighten/utils/custom_style.dart';
import 'package:enlighten/views/paymet_sucessfull_page.dart';
import 'package:enlighten/widgets/main_drawer.dart';
import 'package:enlighten/widgets/my_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/dimensions.dart';
import '../widgets/custom_button.dart';

class PaymentPage extends StatelessWidget {
  static const routeName = 'payment';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.bgColor,
      drawer: MainDrawer(),
      appBar: MyAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: Dimensions.defaultTextSize,
            horizontal: Dimensions.PaddingSize15 * 2),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
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
                    Container(
                      height: 140.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Dimensions.radius),
                            topRight: Radius.circular(Dimensions.radius),
                          ),
                          color: CustomColor.crownNormalColor),
                      child: Padding(
                        padding:
                            EdgeInsets.only(left: Dimensions.PaddingSize15),
                        child: Row(children: [
                          Image.asset(CustomString.insafImage,
                              height: 100.h, width: 100.w),
                          SizedBox(width: 15.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(CustomString.PInsafTxt,
                                        style: CustomStyle.white20w700),
                                    SizedBox(height: Dimensions.heightSize8),
                                    Text(CustomString.PInsafDescTxt,
                                        style: CustomStyle.white16w500),
                                  ],
                                ),
                                Text(CustomString.PPriceTxt,
                                    style: CustomStyle.white24w700),
                              ],
                            ),
                          )
                        ]),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      alignment: Alignment.centerLeft,
                      height: 50.h,
                      width: double.infinity,
                      color: CustomColor.crownDarkColor,
                      child: Row(
                        children: [
                          Text(CustomString.PLanguageTxt,
                              style: CustomStyle.white16w500),
                          Icon(Icons.arrow_drop_down_outlined,
                              color: CustomColor.whiteColor)
                        ],
                      ),
                    ),
                    SizedBox(height: Dimensions.heightSize8 * 2),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(PaymentSucessfullPage.routeName);
                      },
                      child: CustomButon(
                        width: 150.w,
                        title: 'Payment',
                      ),
                    ),
                    SizedBox(height: Dimensions.heightSize8 * 2),
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
