import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Core/ReusableWidgets.dart';

class CommentsTitle extends StatelessWidget {
  const CommentsTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.w),
      child: buildLeftText(text: "Comments"),
    );
  }
}
