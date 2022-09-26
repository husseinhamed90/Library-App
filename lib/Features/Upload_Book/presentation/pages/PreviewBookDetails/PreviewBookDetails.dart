import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_app/Core/ReusableWidgets.dart';
import 'package:library_app/Features/BookDetails/presentation/pages/BookDetails.dart';
import 'package:library_app/Features/Upload_Book/presentation/pages/EnteringBookDetails/EnteringBookDetailsWidgets/EnteringBookDetailsForm.dart';

class PreviewBookDetails extends StatefulWidget {
  const PreviewBookDetails({super.key});

  @override
  PreviewBookDetailsState createState() => PreviewBookDetailsState();
}

class PreviewBookDetailsState extends State<PreviewBookDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(title: "Review Information",context: context),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: ListView(
          children: [
            SizedBox(height: 30.h,),
            const EnteringBookDetailsForm(),
            buildCustomButton(context: context,function: (){
              showDialog(context: context,
                  builder: (context) => AlertDialog(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0))
                    ),
                    content: Container(
                        margin: EdgeInsets.symmetric(vertical: 80.h,horizontal: 20.w),
                        height: MediaQuery.of(context).size.height/3,
                        width: 600,
                        child: Column(
                          children: [
                            Expanded(
                              child: Image.network(fit: BoxFit.fill,"https://img.icons8.com/bubbles/344/book.png",),
                            ),
                            SizedBox(height: 30.h,),
                            Expanded(
                              child: SizedBox(
                                height: 54.h,
                                child: AutoSizeText("Your Book is uploaded successfully",textAlign: TextAlign.center,style: TextStyle(
                                    color: const Color(0xff444444),fontSize: 20.sp,fontWeight: FontWeight.w600
                                ),),
                              ),
                            ),
                            SizedBox(height: 30.h,),
                            buildCustomButton(context: context,function: (){
                              Navigator.pop(context);
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const BookDetails(),));
                            },paddingValue: 0,label: "Check Book Details"),
                          ],
                        )
                    ),
                  ));
            },paddingValue: 0,label: "Upload"),
          ],
        ),
      ),
    );
  }
}