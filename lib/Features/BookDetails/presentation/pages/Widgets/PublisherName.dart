import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PublisherName extends StatelessWidget {
  const PublisherName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(style: TextStyle(
        color: const Color(0xff5A5A5A),
        fontSize: 16.sp,fontWeight: FontWeight.w400,fontFamily: "Raleway"
    ),"J.K Rowling"));
  }
}
