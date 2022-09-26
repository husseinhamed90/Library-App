import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../Core/AppColors.dart';
import '../../../../../../Core/ReusableWidgets.dart';
import '../../../../../BookDetails/presentation/pages/BookDetails.dart';
import '../../PreviewBookDetails/PreviewBookDetails.dart';

class PreviewButton extends StatefulWidget {
  const PreviewButton({Key? key}) : super(key: key);

  @override
  State<PreviewButton> createState() => _PreviewButtonState();
}

class _PreviewButtonState extends State<PreviewButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SizedBox(
              child: ElevatedButton(
                onPressed: () {
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
                },
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
                    backgroundColor: MaterialStateProperty.all(primaryColor),
                    elevation: MaterialStateProperty.all<double>(0.1),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: const BorderSide(
                                color: primaryColor
                            )))),
                child: Text("Upload", style: TextStyle(color: secondColor,fontWeight: FontWeight.w400,fontSize: 13.sp)),
              ),
            ),
          )
        ],
      ),
    );
  }
}