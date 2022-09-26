import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookName extends StatelessWidget {
  const BookName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(style: TextStyle(
        fontSize: 25.sp,fontWeight: FontWeight.w700,fontFamily: "Raleway"
    ),"Harry Potter"));
  }
}
