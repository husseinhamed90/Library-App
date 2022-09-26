import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Core/ReusableWidgets.dart';

class ProfileForm extends StatefulWidget {
  const ProfileForm({Key? key}) : super(key: key);

  @override
  _ProfileFormState createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 48.w),
      child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildText(text: "Full Name",color: const Color(0xff929292),fontSize: 16,fontWeight: FontWeight.w600),
              buildTextField(),
              SizedBox(
                height: 40.h,
              ),
              buildText(text: "Username",color: const Color(0xff929292),fontSize: 16,fontWeight: FontWeight.w600),
              buildTextField(),
              SizedBox(
                height: 40.h,
              ),
              buildText(text: "Email",color: const Color(0xff929292),fontSize: 16,fontWeight: FontWeight.w600),
              buildTextField(),
              SizedBox(
                height: 40.h,
              ),
              buildText(text: "Password",color: const Color(0xff929292),fontSize: 16,fontWeight: FontWeight.w600),
              buildTextField()
            ],
          )),
    );
  }
}
