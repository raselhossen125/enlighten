// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable

import 'package:enlighten/utils/custom_color.dart';
import 'package:enlighten/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../models/consulation_model.dart';
import '../utils/custom_string.dart';
import '../utils/custom_style.dart';
import '../views/peyment_page.dart';
import 'custom_button.dart';

class ConsulationItem extends StatelessWidget {
  ConsulationModel conM;

  ConsulationItem({
    required this.conM,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 27.r),
      child: Container(
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
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Dimensions.largePaddingSize,
              vertical: Dimensions.PaddingSize10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(conM.title.toUpperCase(),
                  style: CustomStyle.Black21w400, textAlign: TextAlign.center),
              conM.isFree
                  ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('@ ${conM.amount.toString()}',
                            style: CustomStyle.Black23w700LineThrow),
                        SizedBox(width: 10),
                        Text('FREE', style: CustomStyle.Black23w700),
                      ],
                    )
                  : Text(
                      '@ ${conM.amount.toString()}',
                      style: CustomStyle.Black23w700,
                    ),
              InkWell(
                onTap: () {
                  _showBottomSheetRecharge(context);
                },
                child: CustomButon(
                  height: 45.h,
                  width: 233.w,
                  title: CustomString.CBtncTxt.toUpperCase(),
                  isPrefixIcon: true,
                  prefixIconImage: CustomString.homeCallImage,
                ),
              ),
            ],
          ),
        ),
      ),
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
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(PaymentPage.routeName);
                },
                child: CustomButon(
                  width: 157.w,
                  height: 28.h,
                  title: CustomString.BSTitleTxt,
                  titleSize: 16.sp,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
