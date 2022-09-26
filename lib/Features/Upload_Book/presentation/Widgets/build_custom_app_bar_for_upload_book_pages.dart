import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'CustomAppBarForUploadBookScreens.dart';

class BuildCustomAppBarForUploadBookPages extends StatelessWidget {
  BuildContext context;
  String title;
  String subTitle;
  BuildCustomAppBarForUploadBookPages({super.key,required this.context, required  this.title, required  this.subTitle});
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(180.h),
      child: CustomAppBarForUploadBookScreens(title: title,context: context),
    );
  }
}
