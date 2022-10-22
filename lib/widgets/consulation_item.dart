// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable

import 'package:enlighten/utils/custom_color.dart';
import 'package:enlighten/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/consulation_model.dart';
import '../utils/custom_string.dart';
import '../utils/custom_style.dart';
import 'custom_button.dart';

class ConsulationItem extends StatelessWidget {
  ConsulationModel conM;

  ConsulationItem({
    required this.conM,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 175.h,
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
          // SizedBox(height: Dimensions.heightSize8 * 10),
          Text(conM.title, style: CustomStyle.Black21w400),
          Text(conM.amount.toString(), style: CustomStyle.Black23w700),
          CustomButon(
            height: 45.h,
            width: 233.w,
            title: CustomString.CBtncTxt,
            isPrefixIcon: true,
            prefixIconImage: CustomString.homeCallImage,
          ),
        ],
      ),
    );
  }
}
