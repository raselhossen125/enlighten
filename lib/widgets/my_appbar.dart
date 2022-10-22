// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/custom_color.dart';
import '../utils/custom_string.dart';
import '../utils/custom_style.dart';
import '../utils/dimensions.dart';
import 'custom_button.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: CustomColor.primaryColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(Dimensions.radius * 2),
        bottomRight: Radius.circular(Dimensions.radius * 2),
      )),
      title: Row(
        children: [
          Image.asset(CustomString.appBarLogoImage),
          Text(CustomString.appbarTitleTxt, style: CustomStyle.white20w700),
        ],
      ),
      actions: [
        InkWell(
          onTap: () {
            _showBottomSheetRecharge(context);
          },
          child: Image.asset(CustomString.appbarImage),
        ),
      ],
    );
  }

  _showBottomSheetRecharge(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.all(Dimensions.defaultPaddingSize),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(CustomString.BSTitleTxt, style: CustomStyle.titleStyle),
              SizedBox(height: Dimensions.heightSize8 - 3),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize),
                child: Divider(color: CustomColor.txtBlackColor.withOpacity(0.20)),
              ),
              SizedBox(height: Dimensions.heightSize8 * 2 + 1),
              Image.asset(CustomString.rechargeImage),
              SizedBox(height: Dimensions.heightSize8 * 2 + 1),
              Text(CustomString.BSSubtitleTxt, style: CustomStyle.subTitletyle),
              SizedBox(height: Dimensions.heightSize8 * 4),
              CustomButon(
                width: 157.w,
                height: 28.h,
                title: CustomString.BSTitleTxt,
                titleSize: 16.sp,
              ),
            ],
          ),
        );
      },
    );
  }
}
