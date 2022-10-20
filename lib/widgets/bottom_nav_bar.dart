// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, use_key_in_widget_constructors

import 'package:enlighten/utils/custom_string.dart';
import 'package:enlighten/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/custom_color.dart';
import '../utils/custom_style.dart';
import '../views/home_page.dart';

class BottomNavBar extends StatefulWidget {
  static const routeName = 'bottom-nav-bar';

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  List _screens = [
    HomePage(),
    Center(
      child: Text('2'),
    ),
    Center(
      child: Text('3'),
    ),
    Center(
      child: Text('4'),
    ),
  ];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.bgColor,
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffE6E6E6)),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius * 2),
            topRight: Radius.circular(Dimensions.radius * 2),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: CustomColor.bgColor,
          elevation: 5,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: _updateIndex,
          selectedLabelStyle: CustomStyle.primary11w400,
          unselectedItemColor: CustomColor.primaryColor,
          unselectedLabelStyle: CustomStyle.primary11w400,
          items: [
            BottomNavigationBarItem(
              label: CustomString.HomeTxt,
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4.r),
                child: Image.asset(CustomString.HomeImage),
              ),
            ),
            BottomNavigationBarItem(
              label: CustomString.CallTxt,
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4.r),
                child: Image.asset(CustomString.CallImage),
              ),
            ),
            BottomNavigationBarItem(
              label: CustomString.WhatsAppTxt,
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4.r),
                child: Image.asset(CustomString.WhatsappImage),
              ),
            ),
            BottomNavigationBarItem(
              label: CustomString.ProfileTxt,
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4.r),
                child: Image.asset(CustomString.ProfileImage),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
