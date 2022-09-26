import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryAndLanguageOfTheBook extends StatelessWidget {
  const CategoryAndLanguageOfTheBook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.w),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Category",style: TextStyle(
                  fontSize: 14.sp,color: const Color(0xff7c7c7c)
              )),
              SizedBox(height: 5.h,),
              Text("Art",style: TextStyle(
                  fontSize: 14.sp
              )),
            ],
          ),
          SizedBox(width: 100.w,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Language",style: TextStyle(
                  fontSize: 14.sp,color: const Color(0xff7c7c7c)
              )),
              SizedBox(height: 5.h,),
              Text("English",style: TextStyle(
                  fontSize: 14.sp
              )),
            ],
          )
        ],
      ),
    );
  }
}
