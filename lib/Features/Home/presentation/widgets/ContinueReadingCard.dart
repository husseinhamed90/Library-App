import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_app/Features/ReadingMode/presentation/pages/ReadingMode.dart';

import '../../../../Core/AppColors.dart';

class ContinueReadingCard extends StatelessWidget {
  const ContinueReadingCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 211.h,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 10,
       // color: Colors.white,
        child: Container(
          //color: secondColor,
          margin: EdgeInsets.symmetric(vertical: 15.h,horizontal: 20.w),
          child: LayoutBuilder(
            builder: (context, constraints) => Row(
              children: [
                Image.network(fit: BoxFit.fitHeight,width: constraints.maxWidth*0.3,height: double.infinity,"https://images-na.ssl-images-amazon.com/images/I/41trAWIzKAL._SX258_BO1,204,203,200_.jpg"),
                SizedBox(width: 20.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: constraints.maxWidth*0.7-(20.w),
                      child: const AutoSizeText("Refactoring: Improving the Design of Existing Code (2nd Edition) ",style: TextStyle(
                          color: headerTextColor,fontFamily: "Poppins",fontSize: 18,fontWeight: FontWeight.w600
                      ),maxLines: 2,overflow: TextOverflow.visible),
                    ),
                    SizedBox(height: 3.h,),
                    Text("Martin Fowler",style:  TextStyle(
                      color: smallTextColor,fontFamily: "Poppins",
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,

                    ),),
                    const Spacer(),
                     AutoSizeText("Chapter 5",style: TextStyle(
                      color: smallTextColor,fontFamily: "Poppins",
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),),
                    SizedBox(height: 11.h),
                    SizedBox(
                      width:constraints.maxWidth*0.7-20.w,
                      height: 34.h,
                      child: ElevatedButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const ReadingMode()));
                      },
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
                          backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
                          foregroundColor: MaterialStateProperty.all<Color>(secondColor),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  side: BorderSide.none
                              )
                          ),
                          textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(
                              fontSize: 11.sp
                          )),
                        ),
                        child: const Text("Continue Read"),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
