import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/ReusableWidgets.dart';
import '../../Widgets/build_custom_app_bar_for_upload_book_pages.dart';
import '../UploadBookPage/UploadBookPage.dart';
import 'EnteringBookDetailsWidgets/EnteringBookDetailsForm.dart';

class EnteringBookDetails extends StatefulWidget {
  const EnteringBookDetails({super.key});

  @override
  _EnteringBookDetailsState createState() => _EnteringBookDetailsState();
}

class _EnteringBookDetailsState extends State<EnteringBookDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          BuildCustomAppBarForUploadBookPages(context: context,title: "Book Details",subTitle: "Add as much details and description as possible about the book"),
          SizedBox(height: 30.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: const EnteringBookDetailsForm(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: buildCustomButton(context: context,function: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const UploadBookPage(),));
            },paddingValue: 0,label: "Next"),
          ),
          SizedBox(height: 30.h,),
        ],
      ),
    );
  }
}


