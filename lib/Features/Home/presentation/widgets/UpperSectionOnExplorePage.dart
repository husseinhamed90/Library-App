import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Core/AppColors.dart';

class UpperSectionOnExplorePage extends StatelessWidget {
  const UpperSectionOnExplorePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          color: primaryColor,
          child: Column(
            children: [
              SizedBox(height: 30.h,),
              Row(
                children: [
                  AutoSizeText("Welcome !",style: TextStyle(
                      fontSize: 20.sp,color: secondColor,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600
                  ),),
                  const Spacer(),

                ],
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: 70,
                width: double.infinity,
                child: Container(
                 // padding: const EdgeInsets.only(bottom: 40),
                  child: AutoSizeText(
                    maxLines: 1,
                    "Choose Your Favourite Book And Enjoy Reading",
                    style: TextStyle(
                        fontSize: 19.sp,
                        fontFamily: "Poppins",
                        color: Colors.white,
                        fontWeight: FontWeight.w300
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 48,
                child: TextField(
                  style: TextStyle(
                      fontSize: 12.sp
                  ),
                  textAlign:TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                      borderRadius: BorderRadius.circular(17),
                    ),
                    prefixIconConstraints: BoxConstraints(
                      minWidth: 14.w,
                      minHeight: 14,
                    ),
                    prefixIcon: Container(margin: EdgeInsets.only(left: 16.w),child: Icon(Icons.search_rounded,size: 20.w,color: const Color(0xff9EB3FF))),

                    filled: true,
                    hintStyle: TextStyle(color: const Color(0xff9EB3FF),fontFamily: "Poppins",fontSize: 15.sp,fontWeight: FontWeight.normal),
                    hintText: "Search",
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.only(left: 34.w),//set this as per your requirement
                  ),
                ),
              ),
              SizedBox(height: 20,)
            ],
          ),
        );
      },
    );
  }
}
