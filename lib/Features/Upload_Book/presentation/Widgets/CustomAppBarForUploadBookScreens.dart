import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Core/AppColors.dart';
import '../../../../Core/ReusableWidgets.dart';

class CustomAppBarForUploadBookScreens extends StatelessWidget {
  const CustomAppBarForUploadBookScreens({
    Key? key,required this.context, required this.title
  }) : super(key: key);

  final BuildContext context;
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100.0.h,
      elevation: 0,
      automaticallyImplyLeading: false,
      flexibleSpace: PreferredSize(
        preferredSize: Size.fromHeight(100.h),
        child: Container(
          padding: EdgeInsets.only(left: 20.w,bottom: 50.h,top: 50.h,right: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(Icons.arrow_back_outlined,size: 25.w,color: secondColor)
              ),
              SizedBox(height: 26.h,),
              Center(child: buildCustomText(text: title,fontWeight: FontWeight.w700,size: 28)),
              SizedBox(height: 15.h,),
              // AutoSizeText(subTitle,style: TextStyle(
              //     fontSize: 15.sp,fontFamily: "Raleway",
              //     fontWeight: FontWeight.w400,color: secondColor
              // ),),
            ],
          ),
        ),
      ),
      backgroundColor: primaryColor,
    );
  }
}