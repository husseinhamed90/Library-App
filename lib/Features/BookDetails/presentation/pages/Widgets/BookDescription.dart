import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDescription extends StatelessWidget {
  const BookDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 22.w),
      // height: 81.h,
      width: double.infinity,
      child: AutoSizeText(
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Bibendum est ultricies integer quis. Iaculis urna id volutpat lacus laoreet. Mauris vitae ultricies leoi",
        style: TextStyle(
          color: Color(0xff1C1C1C),
          fontWeight: FontWeight.w500,fontFamily: "Raleway",
          fontSize: 14.0.sp,
        ),
      ),
    );
  }
}
