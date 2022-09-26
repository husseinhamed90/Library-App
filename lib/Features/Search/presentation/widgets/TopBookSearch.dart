
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/AppColors.dart';

class TopBookSearch extends StatelessWidget {
  const TopBookSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        width: double.infinity,
        height: 300.h,
        child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(width: 8.w,),
          scrollDirection: Axis.vertical,
          itemBuilder: (context,index)=> Container(
              height: 150.h,
            //  color: const Color(0xffF3F3F3),
              padding: const EdgeInsets.all(11),
              child: LayoutBuilder(
                builder: (context, constraints) => Row(
                  children: [
                    Image.network(fit: BoxFit.fill,width: constraints.maxWidth*0.3,height: double.infinity,"https://images-na.ssl-images-amazon.com/images/I/41HXiIojloL._SX258_BO1,204,203,200_.jpg"),
                    SizedBox(width: 10.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 4.h,),
                        SizedBox(
                          width: constraints.maxWidth*0.7-20.w,
                          child: const AutoSizeText("The Pragmatic Programmer",style: TextStyle(
                              color: headerTextColor,fontFamily: "Poppins",fontSize: 12,fontWeight: FontWeight.w600
                          ),maxLines: 2,overflow: TextOverflow.ellipsis),
                        ),
                        SizedBox(height: 10.h,),
                        Text("Joseph Murphy",style:  TextStyle(
                          color: smallTextColor,fontFamily: "Poppins",
                          fontSize: 9.sp,
                          fontWeight: FontWeight.w500,
                        ),),
                        const Spacer(),
                      ],
                    )
                  ],
                ),
              ),
            ),
          itemCount: 4,
        ),
      ),
    );
  }
}
