import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Core/AppColors.dart';


class HorizontalFilterList extends StatelessWidget {
  const HorizontalFilterList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      child: ListView.separated(
        itemCount: 10,
        itemBuilder: (context,index){
          return  Container(
            width: 80.w,
            height: 30.h,
            decoration:  BoxDecoration(
              border: Border.all(color: primaryColor,width: 1.w),
              color: secondColor,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: const Center(child: Text("Popular",style: TextStyle(
              color: primaryColor,
              fontSize: 11,
            ),)),
          );
        },
        separatorBuilder: (context,index){
          return SizedBox(width: 6.w,);
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
