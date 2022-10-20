// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:enlighten/utils/custom_color.dart';
import 'package:enlighten/utils/dimensions.dart';
import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import '../widgets/my_appbar.dart';

class HomePage extends StatelessWidget {
  static const routeName = 'home';

  final phoneController = TextEditingController();
  final otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.bgColor,
      drawer: MainDrawer(),
      appBar: MyAppBar(),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Dimensions.extraLargePaddingSize),
        child: SingleChildScrollView(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
