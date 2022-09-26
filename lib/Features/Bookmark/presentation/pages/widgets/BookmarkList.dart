import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'BookmarkItem.dart';

class BookmarkList extends StatelessWidget {
  const BookmarkList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(22.w),
        child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(height: 10.h,),
          itemBuilder: (context, index) => const BookmarkItem(),
          itemCount: 10,
        ),
      ),
    );
  }
}
