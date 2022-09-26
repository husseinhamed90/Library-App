import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/ReusableWidgets.dart';
import '../../widgets/TagsSection.dart';
import '../../widgets/TopAuthorSearch.dart';
import '../../widgets/TopBookSearch.dart';
import 'SearchPageWidgets/SearchBarWidget.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 22.w,right: 22.w,top: 47.h,bottom: 23.h),
        child: ListView(
        children: [
          const SearchBarWidget(),
          SizedBox(height: 23.h,),
          SizedBox(
          width: 135.w,
          child: Row(
            children:  [
              buildLeftText(text: "Recent"),
              const Spacer(),
              const Text("Clear All",style: TextStyle(
                  color: Color(0xff717171),
                  fontSize: 14,
                  fontWeight: FontWeight.w400
              ),),
            ],
           ),
          ),
          SizedBox(height: 13.h,),
          const TagsSection(),
          SizedBox(height: 28.h,),
          buildLeftText(text: "Top Book Search"),
          SizedBox(height: 15.h,),
          const TopBookSearch(),
          SizedBox(height: 28.h,),
          buildLeftText(text: "Top Author Search"),
          SizedBox(height: 18.h,),
          const TopAuthorSearch(),
        ],
      ),
    );
  }
}





