import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Home/presentation/widgets/BookItem.dart';

class ReaderBooksList extends StatelessWidget {
  const ReaderBooksList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 334.h,
      child: ListView.separated(
        itemCount: 4,
        itemBuilder: (context,index)=> const BookItem(),
        separatorBuilder:  (context,index)=> SizedBox(width: 20.w,),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}