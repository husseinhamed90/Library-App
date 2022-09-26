import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 47.h,
      child: TextField(
        style: TextStyle(
            fontSize: 12.sp
        ),
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            borderSide:  BorderSide(
              width: 1.w,
              color: const Color(0xffD5D5D5),
            ),
          ),
          prefixIconConstraints: BoxConstraints(
            minWidth: 14.w,
            minHeight: 14,
          ),
          prefixIcon: Container(margin: EdgeInsets.only(left: 16.w,right: 16.w),child: const Icon(Icons.search_rounded,size: 20,color: Color(0xff9F9F9F))),
          filled: true,
          hintStyle: TextStyle(color: const Color(0xff9F9F9F),fontFamily: "Poppins",fontSize: 12.sp,fontWeight: FontWeight.normal),
          hintText: "Search titles, topics and authors",
          fillColor: const Color(0xffF6F6F6),
          contentPadding: EdgeInsets.zero,//set this as per your requirement
        ),
      ),
    );
  }
}
