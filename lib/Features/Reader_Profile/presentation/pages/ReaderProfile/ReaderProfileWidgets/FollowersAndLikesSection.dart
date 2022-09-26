import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../Core/ReusableWidgets.dart';

class FollowersAndLikesSection extends StatelessWidget {
  const FollowersAndLikesSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffF8F8F8),
        borderRadius: BorderRadius.all(Radius.circular(11),
        ),
      ),
      height: 62.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildProfileData(label: "Followers",number: "100"),
          buildProfileData(number: "30",label: "Following"),
          buildProfileData(number: "8",label: "Likes"),
        ],
      ),
    );
  }
}