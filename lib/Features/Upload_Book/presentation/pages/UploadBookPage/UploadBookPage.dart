import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_app/Features/Upload_Book/presentation/pages/UploadBookPage/UploadBookPageWidgets/AddMoreAndPreviewButtons.dart';
import '../../../../../Core/ReusableWidgets.dart';
import 'UploadBookPageWidgets/BookCoverRadioButtonWidget.dart';
import '../../Widgets/CustomAppBarForUploadBookScreens.dart';
import 'UploadBookPageWidgets/DottedDragAndDropBox.dart';

class UploadBookPage extends StatefulWidget {
  const UploadBookPage({super.key});

  @override
  _UploadBookPageState createState() => _UploadBookPageState();
}

class _UploadBookPageState extends State<UploadBookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(180.h),
        child: CustomAppBarForUploadBookScreens(
        context: context,
        title: "Upload Your Book",),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 78.w),
        child: ListView(
          children: [
            SizedBox(height: 40.h,),
            const DottedDragAndDropBox(),
            SizedBox(height: 20.h,),
            const PreviewButton(),
          ],
        ),
      ),
    );
  }
}




