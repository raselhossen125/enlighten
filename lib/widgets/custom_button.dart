// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors

import 'package:enlighten/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/custom_color.dart';

class CustomButon extends StatelessWidget {
  String title;
  Color? titleColor;
  Color? bacgoundColor;
  double? width;
  double? height;
  bool? isPrefixIcon;
  String? prefixIconImage;
  String? sufixIconImage;
  bool? isSufixcon;
  double? titleSize;

  CustomButon({
    required this.title,
    this.titleColor = Colors.white,
    this.bacgoundColor = CustomColor.primaryColor,
    this.width = double.infinity,
    this.height = 42,
    this.prefixIconImage,
    this.sufixIconImage,
    this.isPrefixIcon = false,
    this.isSufixcon = false,
    this.titleSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: bacgoundColor,
        borderRadius: BorderRadius.circular(Dimensions.radius * 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if(isPrefixIcon!) Image.asset(prefixIconImage!),
          if(isPrefixIcon!) SizedBox(width: 12.w),
          Text(title, style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: titleSize!.sp,
            color: titleColor,
          ),),
          if(isSufixcon!) SizedBox(width: 12.w),
          if(isSufixcon!) Image.asset(sufixIconImage!)
        ],
      ),
    );
  }
}
