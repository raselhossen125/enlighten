// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable

import 'package:enlighten/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/custom_color.dart';
import '../utils/custom_style.dart';

class MyFormTextField extends StatelessWidget {
  TextEditingController controller;
  String hintText;
  TextInputType? keyBordType;
  int? maxLine;

  MyFormTextField({
    required this.controller,
    required this.hintText,
    this.keyBordType,
    this.maxLine = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: maxLine == 1 ? 42.h : null,
      decoration: BoxDecoration(
          border: Border.all(color: CustomColor.borderColor),
          borderRadius: BorderRadius.circular(Dimensions.radius)),
      child: TextFormField(
        maxLines: maxLine,
        keyboardType: keyBordType,
        controller: controller,
        style: CustomStyle.subTitletyle,
        decoration: InputDecoration(
          hintStyle: CustomStyle.hintText400w16,
          hintText: hintText,
          filled: true,
          fillColor: CustomColor.whiteColor,
          contentPadding: EdgeInsets.only(left: 10.r, right: 10.r),
          focusColor: CustomColor.whiteColor,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(Dimensions.radius),
          ),
        ),
      ),
    );
  }
}
