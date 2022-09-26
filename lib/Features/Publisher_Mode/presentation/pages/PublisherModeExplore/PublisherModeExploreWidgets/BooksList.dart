import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../Core/AppColors.dart';
import '../../../../../../Core/ReusableWidgets.dart';

class BooksList extends StatefulWidget {
  const BooksList({super.key});

  @override
  _BooksListState createState() => _BooksListState();
}

class _BooksListState extends State<BooksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      separatorBuilder: (context, index) {
        return SizedBox(height: 10.h,);
      },
      itemBuilder: (context, index) {
        return Container(
          height: 122.h,
          padding: EdgeInsets.only(bottom: 13.h,top: 10.h,left: 13.w,right: 13.w),
          decoration:  BoxDecoration(
            color: const Color(0xffF3F3F3),
            borderRadius: BorderRadius.all(Radius.circular(5.r),
            ),
          ),
          child: LayoutBuilder(
            builder: (context, constraints) => Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(flex: 1,child: Image.network(fit: BoxFit.fill,"https://images-na.ssl-images-amazon.com/images/I/41xShlnTZTL._SX218_BO1,204,203,200_QL40_FMwebp_.jpg")),
                SizedBox(width: 20.w,),
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                           height: double.infinity,
                          alignment: Alignment.centerLeft,
                          child: Text(overflow: TextOverflow.ellipsis,"Clean Code: A Handbook of Agile Software Craftsmanship",style: TextStyle(
                              color: headerTextColor,fontWeight: FontWeight.w700,fontSize: 16.sp,fontFamily: "Raleway"
                          ),maxLines: 1),
                        ),
                      ),
                      SizedBox(height: 5.h,),
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          height: 10.h,
                          child: Text("J. K. Rowling",style: TextStyle(
                            color: const Color(0xff656161),fontSize: 10.sp,fontWeight: FontWeight.w500,fontFamily: "Raleway"
                          ),),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          itemSize: 10,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,size: 10.w,
                          ),
                          onRatingUpdate: (rating) {},
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          const Spacer(),
                          iconWithText(icon: Icons.favorite,height: 17,fontSize: 12,color: const Color(0xffD60505)),
                          SizedBox(width: 20.w,),
                          iconWithText(icon: Icons.share,height: 17,fontSize: 12,color: const Color(0xff919191)),
                          SizedBox(width: 20.w,),
                          iconWithText(icon: Icons.download,height: 17,fontSize: 12,color: const Color(0xff919191)),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
      itemCount: 10,
    );
  }

}

