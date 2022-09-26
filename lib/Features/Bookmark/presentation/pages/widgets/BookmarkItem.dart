import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Core/AppColors.dart';

class BookmarkItem extends StatelessWidget {
  const BookmarkItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 143.h,
      padding: EdgeInsets.only(bottom: 10.h, top: 10.h, left: 10.w, right: 10),
      decoration: const BoxDecoration(
        color: Color(0xffF3F3F3),
        borderRadius: BorderRadius.all(
          Radius.circular(11),
        ),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) => Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                flex: 1,
                child: Image.network(
                    fit: BoxFit.fill,
                    width: constraints.maxWidth * 0.22,
                    height: double.infinity,
                    "https://m.media-amazon.com/images/P/0321146530.01._SCLZZZZZZZ_SX500_.jpg")),
            SizedBox(
              width: 22.w,
            ),
            Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.only(top: 17.h, bottom: 17.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: SizedBox(
                             height: 24.h,
                              child: AutoSizeText(
                                  overflow: TextOverflow.clip,
                                  "Test Driven Development Book",
                                  style: TextStyle(
                                      color: headerTextColor,fontSize: 20.sp,
                                      fontWeight: FontWeight.w700,fontFamily: "Raleway"),
                                  maxLines: 1,),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 24.h,
                              child: Row(
                                children: [
                                  const Spacer(),
                                  Expanded(
                                      child: Icon(Icons.bookmark,
                                          color: primaryColor,
                                          size: 24.h,)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Kent Beck",
                        style: TextStyle(
                          color: const Color(0xff656161),
                          fontSize: 15.sp,
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}