// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import '../utils/custom_color.dart';
import '../utils/custom_string.dart';
import 'login_page.dart';

class SpalashPage extends StatefulWidget {
  static const routeName = 'spalash';

  @override
  State<SpalashPage> createState() => _SpalashPageState();
}

class _SpalashPageState extends State<SpalashPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, LogInPage.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.bgColor,
      body: Center(
        child: Image.asset(CustomString.SpalashImage),
      ),
    );
  }
}
