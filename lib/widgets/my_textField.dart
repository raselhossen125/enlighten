// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable

import 'package:enlighten/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/custom_color.dart';
import '../utils/custom_style.dart';

class MyTextField extends StatelessWidget {
  TextEditingController controller;
  String title;
  TextInputType? keyBordType;

  MyTextField({
    required this.controller,
    required this.title,
    this.keyBordType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: CustomStyle.textFieldStyle),
        SizedBox(height: 6.h),
        TextFormField(
          keyboardType: keyBordType,
          controller: controller,
          style: CustomStyle.subTitletyle,
          decoration: InputDecoration(
            filled: true,
            fillColor: CustomColor.tFFillColor,
            contentPadding: EdgeInsets.only(left: 10.r, right: 10.r),
            focusColor: CustomColor.tFFillColor,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(Dimensions.radius),
            ),
          ),
        ),
      ],
    );
  }
}
