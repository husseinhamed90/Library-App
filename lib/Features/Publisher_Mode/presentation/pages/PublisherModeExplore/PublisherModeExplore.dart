import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/AppColors.dart';
import '../../../../../Core/ReusableWidgets.dart';
import 'PublisherModeExploreWidgets/BooksList.dart';
import 'PublisherModeExploreWidgets/UpperCardWidget.dart';

class PublisherModeExplore extends StatelessWidget {
  const PublisherModeExplore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.h),
        child: AppBar(
          toolbarHeight: 120.0,
          elevation: 0,
          centerTitle: true,
          title: buildCustomText(text: "Publisher Mode",fontWeight: FontWeight.w400,size: 22),
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_outlined,size: 25,color: Colors.white),
          ),
          backgroundColor: primaryColor,
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: ListView(
          children: [
            SizedBox(height: 30.h,),
            const UpperCardWidget(),
            SizedBox(height: 43.h),
            buildLeftText(text: "Recently Uploaded"),
            SizedBox(height: 25.h),
            const BooksList()
          ],
        ),
      ),
    );
  }
}

