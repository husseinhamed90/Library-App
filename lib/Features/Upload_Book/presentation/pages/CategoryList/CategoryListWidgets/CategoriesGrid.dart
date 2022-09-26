import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../Core/AppColors.dart';
import '../../../../../../Core/Constants.dart';

class CategoriesGrid extends StatefulWidget {
  const CategoriesGrid({Key? key}) : super(key: key);

  @override
  State<CategoriesGrid> createState() => _CategoriesGridState();
}

class _CategoriesGridState extends State<CategoriesGrid> {
  int currentIndex =0;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(vertical: 40.h,horizontal: 40.w),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 4.0,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0
          ),
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: () {
                setState(() => currentIndex=index);
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 7.w,vertical: 8.h),
                    color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color:Colors.green ,
                              width: 1.w
                          ),
                          color:Color(0xffDCFFDD) ,
                          borderRadius: const BorderRadius.all(Radius.circular(5))
                      ),
                      child: Center(child: Text(categories[index]["Lang"]!,style: TextStyle(
                        color:Colors.black ,
                      ),)),
                    ),
                  ),
                  (currentIndex==index)?Positioned(
                    right:0,
                    bottom: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color:primaryColor,),
                      width: 26.w,
                      height: 26.w,
                      child: Icon(Icons.done,color: secondColor,size: 20.w),
                    ),
                  ):Container()
                ],
              ),
            );
          },
          itemCount: categories.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics()
      ),
    );
  }
}
