import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DottedDragAndDropBox extends StatelessWidget {
  const DottedDragAndDropBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:389.h,
      child: DottedBorder(
        color: const Color(0xff7B7B7B),
        borderType: BorderType.RRect,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 45.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 37.95.w,
                  height:37.95.w,
                  child: const FittedBox(child: Icon(Icons.upload,color: Color(0xff7B7B7B),))
              ),
              SizedBox(height: 20.h,),
              SizedBox(
                width: 182.w,
                child: Text("Click Here To Upload Your Book",textAlign: TextAlign.center,style: TextStyle(
                    color: const Color(0xff444444),fontSize: 16.sp,fontWeight: FontWeight.w400,fontFamily: "Raleway"
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}