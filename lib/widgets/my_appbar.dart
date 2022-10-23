// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/custom_color.dart';
import '../utils/custom_string.dart';
import '../utils/custom_style.dart';
import '../utils/dimensions.dart';
import '../views/wallet_page.dart';
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
            Navigator.of(context).pushNamed(WalletPage.routeName);
          },
          child: Image.asset(CustomString.appbarImage),
        ),
      ],
    );
  }
}
