import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopAuthorSearch extends StatelessWidget {
  const TopAuthorSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.w,
      height: 88.h,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(width: 8.w,);
        },
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return SizedBox(
            width: 64.w,
            child: LayoutBuilder(
              builder: (context, constraints) => Column(
                children: [
                  Expanded(
                    child: Container(
                      height: constraints.maxHeight*0.75,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Dave_Thomas_speaking_at_the_Pasadena_Rails_Studio.jpg/220px-Dave_Thomas_speaking_at_the_Pasadena_Rails_Studio.jpg'),
                            fit: BoxFit.fill
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: constraints.maxHeight*0.05,),
                  SizedBox(
                   // height: constraints.maxHeight*0.2,
                    child: AutoSizeText("Dave Thomas",style: TextStyle(
                        fontSize: 12.sp
                    )),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}