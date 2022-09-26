import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tags/flutter_tags.dart';

class TagsSection extends StatelessWidget {
  const TagsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Tags(
        spacing: 10.w,
        direction: Axis.horizontal,
        runSpacing: 9.h,
        verticalDirection: VerticalDirection.down,
        alignment: WrapAlignment.start,
        columns: 3,
        itemCount: 5,
        itemBuilder: (index){
          return Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 12.w,bottom: 6.h,top: 6.h,),
            height: 30.h,
            width: 100.w,
            decoration: const BoxDecoration(
              color: Color(0xffF0F0F0),
              borderRadius: BorderRadius.all(Radius.circular(4),
              ),
            ),
            child:Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                AutoSizeText("Law of life",style: TextStyle(
                    color: Color(0xff131313),fontSize: 10
                )),
                Spacer(),
                Icon(Icons.close,size: 10,)
              ],
            ),
          );
        },
      ),
    );
  }
}
