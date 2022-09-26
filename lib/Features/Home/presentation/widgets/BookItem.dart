import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_app/Core/AppColors.dart';
import 'package:library_app/Features/Upload_Book/presentation/pages/PreviewBookDetails/PreviewBookDetails.dart';

import '../../../BookDetails/presentation/pages/BookDetails.dart';

class BookItem extends StatelessWidget {
  const BookItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const BookDetails(),));
      },
      child: Card(
        child: SizedBox(
          width: 182.w,
          height: 330.h,
          child: LayoutBuilder(
            builder: (context, constraints) =>  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8.h,),
                Expanded(
                  flex: 2,
                  child: Stack(
                    children: [
                      Image.network(fit: BoxFit.fill,width: constraints.maxWidth,"https://images-na.ssl-images-amazon.com/images/I/91ocU8970hL.jpg"),
                      Positioned(
                        top: 14.h,
                        right: 12.w,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 35.w,
                            height: 35.w,
                            decoration: const BoxDecoration(
                              color: secondColor,
                              shape: BoxShape.circle
                            ),
                            child: Icon(Icons.bookmark_outline,color: const Color(0xff8E8E8E),size: 25.w,),
                          )
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                      margin: EdgeInsets.only(left: 12.w,top: 14.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 4,
                            child: AutoSizeText(style: TextStyle(
                                color: const Color(0xff202020),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w700
                            ),overflow: TextOverflow.ellipsis,maxLines: 3,"Harry Potter and the Sorcerer's Stone"),
                          ),
                          SizedBox(height: 8.h,),
                          Expanded(
                            flex: 1,
                               child: Container(
                                 alignment: Alignment.bottomLeft,
                                 child: Text("Chapter 2",style: TextStyle(
                                   color: const Color(0xff6A6A6A),fontFamily: "Poppins",
                                   fontSize: 12.sp,
                                   fontWeight: FontWeight.w500,

                                 ),),
                               ),
                          ),
                          SizedBox(height: 8.h,),
                        ],
                      )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
