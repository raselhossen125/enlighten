// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../utils/custom_color.dart';
import '../utils/custom_string.dart';
import '../utils/custom_style.dart';
import '../utils/dimensions.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
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
        Image.asset(CustomString.appbarImage),
      ],
    );
  }
}
