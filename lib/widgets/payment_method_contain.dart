// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:enlighten/utils/custom_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';

class PaymentMethodContain extends StatelessWidget {
  String image;
  String title;

  PaymentMethodContain({
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: Dimensions.marginSize),
      height: 50.h,
      width: double.infinity,
      decoration: BoxDecoration(
          border:
              Border.all(color: CustomColor.txtBlackColor.withOpacity(0.20))),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.PaddingSize15),
        child: Row(
          children: [
            Image.asset(image, height: 30, width: 30),
            SizedBox(width: 15.w),
            Text(title, style: CustomStyle.Black20w500),
            Spacer(),
            Icon(Icons.arrow_forward_ios, color: CustomColor.crownDarkColor),
          ],
        ),
      ),
    );
  }
}
