// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable, unused_local_variable, avoid_unnecessary_containers

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../data/banerImage_list.dart';
import '../utils/custom_color.dart';

class MySlider extends StatefulWidget {
  // double height;
  // double width;

  // MySlider({
  //   required this.height,
  //   required this.width,
  // });

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
              return Container(
                child: Image.asset(
                  banerImageList[index],
                  height: 169.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              );
            },
            options: CarouselOptions(
              // height: widget.height,
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
        SizedBox(height: 15.h),
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
