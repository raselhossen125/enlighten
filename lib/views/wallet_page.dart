// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations, prefer_interpolation_to_compose_strings

import 'package:enlighten/utils/custom_color.dart';
import 'package:enlighten/utils/custom_string.dart';
import 'package:enlighten/utils/custom_style.dart';
import 'package:enlighten/widgets/main_drawer.dart';
import 'package:enlighten/widgets/my_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/previus_transaction_model.dart';
import '../utils/dimensions.dart';
import '../widgets/custom_button.dart';

class WalletPage extends StatelessWidget {
  static const routeName = 'wallet';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.bgColor,
      drawer: MainDrawer(),
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Dimensions.defaultPaddingSize),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 193.h,
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
                  padding: EdgeInsets.all(Dimensions.defaultPaddingSize),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ListTile(
                        dense: false,
                        contentPadding: EdgeInsets.all(0),
                        title: Text(CustomString.WbalanceTxt,
                            style: CustomStyle.Black20w500),
                        subtitle: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.r),
                          child: Text(
                              '${CustomString.rupySymbool}  ' +
                                  CustomString.WbalanceRupyTxt.toInt()
                                      .toString(),
                              style: CustomStyle.Black30w500),
                        ),
                        trailing: Image.asset(CustomString.walletImage),
                      ),
                      CustomButon(
                        height: 45.h,
                        title: CustomString.WbtnTxt.toUpperCase(),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: Dimensions.heightSize8 * 2 + 4),
              Container(
                alignment: Alignment.center,
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
                  padding: EdgeInsets.all(Dimensions.defaultPaddingSize),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(CustomString.WPTTxt, style: CustomStyle.Black20w500),
                      SizedBox(height: Dimensions.heightSize8 * 2 + 4),
                      ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        itemCount: PreviusTransactionList.length,
                        itemBuilder: (context, index) {
                          final tM = PreviusTransactionList[index];
                          return Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(tM.transactionId,
                                        style: CustomStyle.Black14w300),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(tM.date,
                                          style: CustomStyle.Black14w300),
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                          '${CustomString.rupySymbool} ' +
                                              tM.amount.toInt().toString(),
                                          style: CustomStyle.Black14w300),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
