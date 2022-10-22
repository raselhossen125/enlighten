// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable

import 'package:enlighten/utils/custom_color.dart';
import 'package:enlighten/utils/custom_style.dart';
import 'package:enlighten/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AstrologyContainer extends StatelessWidget {
  String image;
  String title;

  AstrologyContainer({
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 93.h,
      width: 159.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.radius),
        color: CustomColor.tFFillColor,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: Dimensions.PaddingSize15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(image),
            Text(title, style: CustomStyle.Black15w400, textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }
}
