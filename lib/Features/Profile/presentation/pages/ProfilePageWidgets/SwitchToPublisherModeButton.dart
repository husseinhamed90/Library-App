
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Publisher_Mode/presentation/pages/PublisherMode_NavBar.dart';

class SwitchToPublisherModeButton extends StatelessWidget {
  const SwitchToPublisherModeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.h,
      padding: EdgeInsets.symmetric(horizontal: 90.w),
      child: ElevatedButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const PublisherMode_NavBar(),)),
        style: ButtonStyle(
            backgroundColor:
            MaterialStateProperty.all(const Color(0xffF6F6F6)),
            elevation: MaterialStateProperty.all<double>(0.1),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide.none))),
        child: Text("Switch to publisher mode", style: TextStyle(color: const Color(0xff0D0D0D),fontWeight: FontWeight.w600,fontFamily: "Raleway",fontSize: 16.sp)),
      ),
    );
  }
}