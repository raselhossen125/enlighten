// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable, unused_local_variable, avoid_unnecessary_containers

import 'package:carousel_slider/carousel_slider.dart';
import 'package:enlighten/utils/custom_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../data/banerImage_list.dart';
import '../utils/custom_color.dart';
import '../utils/custom_string.dart';

class MySlider extends StatefulWidget {

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(0),
          child: CarouselSlider.builder(
            itemCount: banerImageList.length,
            itemBuilder: (context, index, realIndex) {
              return Stack(
                children: [
                  Image.asset(
                    banerImageList[index],
                    height: 169.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Text(
                      CustomString.sliderTxt,
                      style: CustomStyle.white20w700,textAlign: TextAlign.center,
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 40,
                    child: Container(
                      alignment: Alignment.center,
                      height: 35.h,
                      width: 134.w,
                      color: CustomColor.whiteColor,
                      child: Text(
                        CustomString.sliderBtnTxt.toUpperCase(),
                        style: CustomStyle.primary14w700,
                      ),
                    ),
                  )
                ],
              );
            },
            options: CarouselOptions(
              viewportFraction: 1,
              initialPage: 0,
              enableInfiniteScroll: false,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              },
            ),
          ),
        ),
        buildIndicator(banerImageList.length),
      ],
    );
  }

  Widget buildIndicator(int length) => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: length,
        effect: ScrollingDotsEffect(
          dotHeight: 10,
          dotWidth: 10,
          dotColor: CustomColor.primaryColor.withOpacity(0.50),
          activeDotColor: CustomColor.primaryColor,
        ),
      );
}
