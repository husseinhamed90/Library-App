import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../Core/ReusableWidgets.dart';
class EnteringBookDetailsForm extends StatelessWidget {
  const EnteringBookDetailsForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildText(text: "Book Title",fontSize: 14,color: const Color(0xff191919),fontWeight: FontWeight.w700),
            SizedBox(
              height: 14.h,
            ),
            buildTextField(haveBorder: true),
            SizedBox(
              height: 40.h,
            ),
            buildText(text: "Author Name",fontSize: 14,color: const Color(0xff191919),fontWeight: FontWeight.w700),
            SizedBox(
              height: 14.h,
            ),
            buildTextField(haveBorder: true),
            SizedBox(
              height: 40.h,
            ),
            buildText(text: "Language",fontSize: 14,color: const Color(0xff191919),fontWeight: FontWeight.w700),
            SizedBox(
              height: 14.h,
            ),
            buildTextField(haveBorder: true),
            SizedBox(
              height: 40.h,
            ),
            buildText(text: "Description",fontSize: 14,color: const Color(0xff191919),fontWeight: FontWeight.w700),
            SizedBox(
              height: 14.h,
            ),
            buildTextField(haveBorder: true,maxLines: 4 ),
            SizedBox(
              height: 35.h,
            ),
          ],
        ));
  }
}