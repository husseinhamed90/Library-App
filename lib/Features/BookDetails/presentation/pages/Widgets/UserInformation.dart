import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserInformation extends StatelessWidget {
  const UserInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.w),
      child: Row(
        children: [
          Container(
              width: 61.w,
              height: 61.w,
              decoration:  const BoxDecoration(
                  shape: BoxShape.circle,
                  image:  DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80")
                  )
              )),
          SizedBox(width: 18.w,),
          Container(
            height: 61.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text("J. K. Rowling",style: TextStyle(
                      fontSize: 15.sp,color: const Color(0xff2D2D2D),fontWeight: FontWeight.w700,fontFamily: "Raleway"
                  ),),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(4.w),
                    width: 120.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: const Color(0xffe5ebff),
                    ),
                    child: const AutoSizeText("Contact me",style: TextStyle(
                        color: Color(0xff4563cb)
                    )),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
