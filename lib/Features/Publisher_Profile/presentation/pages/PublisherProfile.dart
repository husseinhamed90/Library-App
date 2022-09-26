
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/AppColors.dart';
import '../../../../Core/ReusableWidgets.dart';
import '../../../Publisher_Mode/presentation/pages/PublisherModeExplore/PublisherModeExploreWidgets/BooksList.dart';
import '../../../Reader_Profile/presentation/pages/ReaderProfile/ReaderProfileWidgets/FollowersAndLikesSection.dart';

class PublisherProfile extends StatefulWidget {
  const PublisherProfile({super.key});

  @override
  _PublisherProfileState createState() => _PublisherProfileState();
}

class _PublisherProfileState extends State<PublisherProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(title: "Publisher Profile",context: context),
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
                  buildLeftText(text: "Books Uploaded"),
                  const Spacer(),
                   Text("Total 10",style: TextStyle(
                      color: primaryColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400
                  ),),
                ],
              ),
            ),
            SizedBox(height: 25.h),
            const BooksList()
          ],
        ),
      ),
    );
  }
}


