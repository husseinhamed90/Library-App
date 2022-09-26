import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../Core/AppColors.dart';
import '../../../../../../Core/ReusableWidgets.dart';
import '../../../../../Upload_Book/presentation/pages/CategoryList/CategoryList.dart';

class UpperCardWidget extends StatelessWidget {
  const UpperCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190.h,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 68.h,
              width: 68.h,
              decoration: const BoxDecoration(
                color: Color(0xffCED9FF),
                shape: BoxShape.circle,
              ),
              child: IconButton(onPressed: () {

              }, icon: Icon(Icons.file_upload,color: primaryColor,size: 30.w,)),
            ),
            SizedBox(height: 26.h,),
            buildCustomButton(context: context,function: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const CategoryList(),));
            },paddingValue: 17,label: "Upload book"),
          ],
        ),
      ),
    );
  }
}