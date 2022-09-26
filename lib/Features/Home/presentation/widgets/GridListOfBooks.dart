import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'BookItem.dart';

class GridListOfBooks extends StatelessWidget {
  const GridListOfBooks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1/1.9,
            crossAxisSpacing: 20.h,
            mainAxisSpacing: 20.h
        ),
        itemBuilder: (context,index)=> const BookItem(),
        itemCount: 5,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics()
    );
  }
}

