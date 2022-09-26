
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_app/Core/AppColors.dart';
import 'package:library_app/Core/ReusableWidgets.dart';
import 'package:library_app/Features/Bookmark/presentation/pages/widgets/BookmarkList.dart';


class BookMark extends StatefulWidget {
  const BookMark({super.key});

  @override
  _BookMarkState createState() => _BookMarkState();
}

class _BookMarkState extends State<BookMark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.h),
        child: AppBar(

          elevation: 0,
          centerTitle: true,
          title: buildCustomText(text: "Bookmark",fontWeight: FontWeight.w400,size: 22),
          automaticallyImplyLeading: false,
          backgroundColor: primaryColor,
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 30.h,),
          const BookmarkList()
        ],
      ),
    );
  }
}

