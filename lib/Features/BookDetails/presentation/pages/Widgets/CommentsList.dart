import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommentsList extends StatelessWidget {
  const CommentsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {

        return  Container(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Row(
            children: [
              Container(
                  width: 47.w,
                  height: 47.w,
                  decoration:  const BoxDecoration(
                      shape: BoxShape.circle,
                      image:  DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80")
                      )
                  )),
              SizedBox(width: 18.w,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText("J. K. Rowling",style: TextStyle(
                      fontSize: 15.sp,color: const Color(0xff1C1C1C),fontWeight: FontWeight.w700,
                    ),),
                    SizedBox(height: 6.h,),
                    AutoSizeText( "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",style: TextStyle(
                      fontSize: 12.sp,color: const Color(0xff1C1C1C),fontWeight: FontWeight.w500,
                    )),
                  ],
                ),
              )
            ],
          ),

        );
      },
      itemCount: 5,
      separatorBuilder: (context,index){
        return SizedBox(height: 44.h,);
      },
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
    );
  }
}
