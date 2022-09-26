import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Core/ReusableWidgets.dart';

class AboutBookTitle extends StatelessWidget {
  const AboutBookTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.w),

      child:  buildLeftText(text: "About Book"),
    );
  }
}
