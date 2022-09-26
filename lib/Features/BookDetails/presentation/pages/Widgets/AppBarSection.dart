import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/AppColors.dart';
import '../../../../../Core/ReusableWidgets.dart';

class AppBarSection extends StatelessWidget {
  const AppBarSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 430.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(
              bottom: 42.h,
            ),
            color: primaryColor,
            height: 242.h,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 5.w),
                  //width: 40.w,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_outlined,
                        size: 25.w, color: Colors.white),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: buildCustomText(text: "Book Details",fontWeight: FontWeight.w400,size: 22),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.w),
                  width: 40.w,
                ),
              ],
            ),
          ),
          Container(),
          Positioned(
            top: 170.0.h,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                height: 287.h,
                width: 200.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage('https://images-na.ssl-images-amazon.com/images/I/91ocU8970hL.jpg'),
                      fit: BoxFit.fill),
                  //color: Colors.teal,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
