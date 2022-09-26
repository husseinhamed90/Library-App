import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Core/AppColors.dart';
import 'ContinueReadingCard.dart';
import 'GridListOfBooks.dart';
import 'HorizontalFilterList.dart';

class LowerSectionOnExplorePage extends StatelessWidget {
  const LowerSectionOnExplorePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 22.w,vertical: 27.h),
        decoration: const BoxDecoration(
          color: secondColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText("Continue Reading",style: TextStyle(
                color: headerTextColor,fontFamily: "Poppins",fontSize: 20.sp,fontWeight: FontWeight.w600
            ),),
            const SizedBox(height: 20,),
            const ContinueReadingCard(),
            const SizedBox(height: 20,),
            const Divider(height: 0.4,color: Color(0xff9B9B9B),),
            const SizedBox(height: 20,),
            AutoSizeText("Recommended Books",style: TextStyle(
                color: headerTextColor,fontFamily: "Poppins",fontSize: 20.sp,fontWeight: FontWeight.w600
            ),),
            const SizedBox(height: 20,),
            const GridListOfBooks()
          ],
        ),
      ),
    );
  }
}



