
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/ReusableWidgets.dart';
import 'ReaderProfileWidgets/FollowersAndLikesSection.dart';
import 'ReaderProfileWidgets/ReaderBooksList.dart';

class ReaderProfile extends StatefulWidget {
  const ReaderProfile({super.key});

  @override
  _ReaderProfileState createState() => _ReaderProfileState();
}

class _ReaderProfileState extends State<ReaderProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(title: "Reader Profile",context: context),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: ListView(
          children: [
            SizedBox(height: 30.h,),
            buildUpperProfileDataSection(),
            SizedBox(height: 40.h,),
            const FollowersAndLikesSection(),
            SizedBox(height: 40.h,),
            SizedBox(
              width: 135.w,
              child: Row(
                children:  [
                  buildLeftText(text: "Recent Reading"),
                ],
              ),
            ),
            SizedBox(height: 25.h),
            const ReaderBooksList()
          ],
        ),
      ),
    );
  }
}


