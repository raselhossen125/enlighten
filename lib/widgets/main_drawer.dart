// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, must_be_immutable, unused_local_variable, unnecessary_null_comparison, prefer_if_null_operators

import 'package:enlighten/utils/custom_color.dart';
import 'package:enlighten/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/drawer_listItem_model.dart';
import '../utils/custom_string.dart';
import '../utils/custom_style.dart';
import '../utils/dimensions.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: CustomColor.primaryColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(25),
          topRight: Radius.circular(25),
        )),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 17.r, vertical: 23.r),
            child: Column(
              children: [
                SizedBox(height: Dimensions.heightSize8),
                Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: Image.asset(CustomString.CrossImage),
                  ),
                ),
                SizedBox(height: Dimensions.heightSize8),
                Image.asset(CustomString.drawerProfileImage),
                SizedBox(height: Dimensions.heightSize8 * 2),
                Text(CustomString.PhoneTxt, style: CustomStyle.white24w700),
                SizedBox(height: Dimensions.heightSize8 * 7),
                ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: drawerItemList.length,
                  itemBuilder: (context, index) {
                    final itemM = drawerItemList[index];
                    return ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.all(0),
                      leading: Image.asset(itemM.image),
                      title: Text(itemM.title, style: CustomStyle.white16w500),
                    );
                  },
                ),
                SizedBox(height: Dimensions.heightSize8 * 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 1.h,
                        width: 41.w,
                        color: CustomColor.whiteColor),
                    SizedBox(width: 9.w),
                    Text(CustomString.DAvailablext,
                        style: CustomStyle.white16w500),
                    SizedBox(width: 9.w),
                    Container(
                        height: 1.h,
                        width: 41.w,
                        color: CustomColor.whiteColor),
                  ],
                ),
                SizedBox(height: Dimensions.heightSize8 * 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(CustomString.drawerFbImage),
                    SizedBox(width: 15.w),
                    Image.asset(CustomString.drawerYoutubeImage),
                    SizedBox(width: 15.w),
                    Image.asset(CustomString.drawerInstagramImage),
                  ],
                ),
                SizedBox(height: Dimensions.heightSize8 * 7),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.r),
                  child: CustomButon(
                    bacgoundColor: CustomColor.whiteColor,
                    titleColor: CustomColor.primaryColor,
                    title: CustomString.DSignOutxt,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
