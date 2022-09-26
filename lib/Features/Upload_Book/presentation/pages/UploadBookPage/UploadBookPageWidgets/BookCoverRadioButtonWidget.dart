import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookCoverRadioButtonWidget extends StatelessWidget {
  const BookCoverRadioButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 18.h),
      child: Row(
        children: [
          Radio(
            visualDensity: const VisualDensity(
              horizontal: VisualDensity.minimumDensity,
              vertical: VisualDensity.minimumDensity,
            ),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            value: "book cover",
            groupValue: "book cover",
            onChanged: (value) {},
          ),
          SizedBox(width: 7.w,),
          Text('Set as book cover',style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,fontFamily: "Raleway")),
        ],
      ),
    );
  }
}