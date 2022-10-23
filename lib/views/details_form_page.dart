// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, non_constant_identifier_names

import 'package:enlighten/utils/custom_string.dart';
import 'package:enlighten/utils/dimensions.dart';
import 'package:enlighten/widgets/main_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../data/drop_down_data.dart';
import '../utils/custom_color.dart';
import '../utils/custom_style.dart';
import '../widgets/custom_button.dart';
import '../widgets/my_appbar.dart';
import '../widgets/my_form_textField.dart';

class DetailsFormPage extends StatefulWidget {
  static const routeName = 'form';

  @override
  State<DetailsFormPage> createState() => _DetailsFormPageState();
}

class _DetailsFormPageState extends State<DetailsFormPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final dateOfBirthController = TextEditingController();
  final birthTimeController = TextEditingController();
  final cityController = TextEditingController();
  final messageController = TextEditingController();
  String? genderValue;
  String? countryValue;
  String? stateValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: MyAppBar(),
      body: Padding(
        padding: EdgeInsets.all(Dimensions.defaultPaddingSize),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                    children: [
                      MyFormTextField(
                        controller: nameController,
                        hintText: CustomString.FNameTxt,
                      ),
                      SizedBox(height: Dimensions.heightSize8 * 2),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimensions.PaddingSize10),
                        height: 42.h,
                        decoration: BoxDecoration(
                            border: Border.all(color: CustomColor.borderColor),
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            hint: Text(
                              'Gender',
                              style: CustomStyle.hintText400w16,
                            ),
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: CustomColor.txtBlacNormalkColor,
                            ),
                            isExpanded: true,
                            value: genderValue,
                            items: genderItems
                                .map(
                                  (item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: CustomStyle.subTitletyle,
                                    ),
                                  ),
                                )
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                genderValue = value;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: Dimensions.heightSize8 * 2),
                      MyFormTextField(
                        controller: emailController,
                        hintText: CustomString.FEmailTxt,
                      ),
                      SizedBox(height: Dimensions.heightSize8 * 2),
                      MyFormTextField(
                        controller: dateOfBirthController,
                        hintText: CustomString.FDOBTxt,
                      ),
                      SizedBox(height: Dimensions.heightSize8 * 2),
                      MyFormTextField(
                        controller: birthTimeController,
                        hintText: CustomString.FBTTxt,
                      ),
                      SizedBox(height: Dimensions.heightSize8 * 2),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimensions.PaddingSize10),
                        height: 42.h,
                        decoration: BoxDecoration(
                            border: Border.all(color: CustomColor.borderColor),
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            hint: Text(
                              'Country',
                              style: CustomStyle.hintText400w16,
                            ),
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: CustomColor.txtBlacNormalkColor,
                            ),
                            isExpanded: true,
                            value: countryValue,
                            items: countryrItems
                                .map(
                                  (item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: CustomStyle.subTitletyle,
                                    ),
                                  ),
                                )
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                countryValue = value;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: Dimensions.heightSize8 * 2),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimensions.PaddingSize10),
                        height: 42.h,
                        decoration: BoxDecoration(
                            border: Border.all(color: CustomColor.borderColor),
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            hint: Text(
                              'State',
                              style: CustomStyle.hintText400w16,
                            ),
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: CustomColor.txtBlacNormalkColor,
                            ),
                            isExpanded: true,
                            value: stateValue,
                            items: stateItems
                                .map(
                                  (item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: CustomStyle.subTitletyle,
                                    ),
                                  ),
                                )
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                stateValue = value;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: Dimensions.heightSize8 * 2),
                      MyFormTextField(
                        controller: cityController,
                        hintText: CustomString.FCityTxt,
                      ),
                      SizedBox(height: Dimensions.heightSize8 * 2),
                      MyFormTextField(
                        maxLine: 5,
                        controller: messageController,
                        hintText: CustomString.FMessageTxt,
                      ),
                      SizedBox(height: Dimensions.heightSize8 * 3 + 3),
                      CustomButon(title: CustomString.FBtnTxt, width: 150.w)
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
