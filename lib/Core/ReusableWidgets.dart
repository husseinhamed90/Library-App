import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'AppColors.dart';

SizedBox buildLeftText({required String text}) {
  return SizedBox(
    width: 132.w,
    child: AutoSizeText(text,style:  TextStyle(
        color: const Color(0xff0C0C0C),
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,fontFamily: "Raleway"
    ),),
  );
}

Text buildText({required String text,required int fontSize,required Color color,required FontWeight fontWeight}) {
  return Text(text,
      style: TextStyle(
          color: color,
          fontSize: fontSize.sp,
          fontWeight: fontWeight,fontFamily: "Raleway"));
}

TextField buildTextField({bool haveBorder=false,double ?height, int maxLines=1,}) {
  return TextField(
      maxLines: maxLines,
      textAlign: TextAlign.left,
      style: const TextStyle(
        fontWeight: FontWeight.w600,fontFamily: "Raleway",
      ),
      decoration:InputDecoration(
        contentPadding:EdgeInsets.only(left: 20.w,top: 26.h),
        border :  OutlineInputBorder(borderRadius: BorderRadius.all( Radius.circular(8.0.r),),
          borderSide: BorderSide(
            width: 1.w,
          ),
        ),
        fillColor: secondColor,
        filled: haveBorder,
        hintText: 'Enter something',
      )
  );
}

Column buildProfileData({required String number,required String label}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(number,style: TextStyle(
          color: const Color(0xff242424),
          fontSize: 16.sp,
          fontWeight: FontWeight.w700
      ),),
      Text(label,style: TextStyle(
          color: const Color(0xff242424),
          fontSize: 12.sp,
          fontWeight: FontWeight.w400
      ),)
    ],
  );
}

Container buildCustomButton({required BuildContext context,required Function function,required double paddingValue,required String label}) {
  return Container(
    height: 52.h,
    width: double.infinity,
    padding: EdgeInsets.symmetric(horizontal: paddingValue.w),
    child: ElevatedButton(
      onPressed: () {
        function();
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(primaryColor),
          elevation: MaterialStateProperty.all<double>(0.1),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide.none))),
      child: Text(label,
          style: TextStyle(color: secondColor,fontWeight: FontWeight.w500,fontSize: 16.sp,fontFamily: "Raleway")),
    ),
  );
}

Widget buildCustomText({required String text,required double size,required FontWeight fontWeight}){
  return Text(
    text,
    style: TextStyle(
        fontSize: size.sp,
        fontWeight: fontWeight,fontFamily: "Raleway",
        color: Colors.white),
  );
}

Widget iconWithText({required IconData icon,required double height,required double fontSize,required Color color}){
  return Row(
    children: [
      SizedBox(height: height.w,width: height.w,child: FittedBox(child: Icon(icon,color: color))),
      SizedBox(width: 8.w,),
      Text("100",style: TextStyle(fontSize: fontSize.sp,color: const Color(0xff919191),fontWeight: FontWeight.w500))
    ],
  );
}

PreferredSize buildAppbar({required String title,required BuildContext context}) {
  return PreferredSize(
    preferredSize: Size.fromHeight(120.h),
    child: AppBar(
      toolbarHeight: 120.0,
      elevation: 0,
      centerTitle: true,

      title: buildCustomText(text: title,size: 22,fontWeight: FontWeight.w400),
      automaticallyImplyLeading: false,

      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon:  const Icon(Icons.arrow_back_outlined,size: 22,color: secondColor),
      ),
      backgroundColor: primaryColor,
    ),
  );
}

Widget buildUpperProfileDataSection() {
  return SizedBox(
    //color: Colors.orange,
    height: 125.h,
    width: double.infinity,
    child: LayoutBuilder(
      builder: (context, constraints) => Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30.h,
                  child: AutoSizeText("J.K Rowling ",style: TextStyle(
                      fontSize: 26.sp,fontWeight: FontWeight.w700,fontFamily: "Raleway",color: const Color(0xff000000)
                  ),),
                ),
                Expanded(
                  child: SizedBox(
                    width: constraints.maxWidth*0.6,
                    child: AutoSizeText("Publisher Or Reader ",style: TextStyle(
                        fontSize: 14.sp,fontWeight: FontWeight.w400,fontFamily: "Poppins",color: const Color(0xff8E8E8E)
                    ),),
                  ),
                ),
                // Spacer(),
                Expanded(
                  child: Container(
                    width: constraints.maxWidth*0.6,
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: SizedBox(
                            width: constraints.maxWidth*0.23-10.w,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
                                  backgroundColor: MaterialStateProperty.all(secondColor),
                                  elevation: MaterialStateProperty.all<double>(0.1),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                          side: const BorderSide(
                                              color: primaryColor
                                          )))),
                              child: const Text("Follow",
                                  style: TextStyle(color: primaryColor,fontWeight: FontWeight.w400,)),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w,),
                        // Expanded(
                        //   child: SizedBox(
                        //     width: constraints.maxWidth*0.32,
                        //     child: ElevatedButton(
                        //       onPressed: () {},
                        //       style: ButtonStyle(
                        //           padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
                        //           backgroundColor: MaterialStateProperty.all(primaryColor),
                        //           elevation: MaterialStateProperty.all<double>(0.1),
                        //           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        //               RoundedRectangleBorder(
                        //                   borderRadius: BorderRadius.circular(5.0),
                        //                   side: BorderSide.none))),
                        //       child: const Text("Message",
                        //           style: TextStyle(color: secondColor,fontWeight: FontWeight.w400)),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 125.h,
            width: 110.w,
            child: Column(
              children: [
                Container(
                  width: 110.w,
                  height: 110.h,
                  decoration: const BoxDecoration(
                    color: Colors.teal,

                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage('https://googleflutter.com/sample_image.jpg',),
                        fit: BoxFit.fill
                    ),

                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}