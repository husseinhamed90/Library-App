import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_app/Features/ReadingMode/presentation/pages/ReadingMode.dart';
import '../../../../Core/AppColors.dart';
import '../../../../Core/ReusableWidgets.dart';
import 'Widgets/AboutBookTitle.dart';
import 'Widgets/AboutTheAuthorTitle.dart';
import 'Widgets/AppBarSection.dart';
import 'Widgets/BookDescription.dart';
import 'Widgets/BookName.dart';
import 'Widgets/BookStatistics.dart';
import 'Widgets/CategoryAndLanguageOfTheBook.dart';
import 'Widgets/CommentsList.dart';
import 'Widgets/CommentsTitle.dart';
import 'Widgets/DividerLine.dart';
import 'Widgets/PublisherName.dart';
import 'Widgets/UserInformation.dart';
import 'Widgets/WriteCommentTextField.dart';

class BookDetails extends StatefulWidget {
  const BookDetails({super.key});

  @override
  _BookDetailsState createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

     body: SafeArea(
       child: Scaffold(
         body: ListView(
             children: [
               const AppBarSection(),
               SizedBox(height: 10.h,),
               const BookName(),
               SizedBox(height: 10.h,),
               const PublisherName(),
               SizedBox(height: 35.h,),
               const DividerLine(),
               const BookStatistics(),
               const DividerLine(),
               SizedBox(height: 33.h,),
               const AboutBookTitle(),
               SizedBox(height: 15.h,),
               const BookDescription(),
               SizedBox(height: 30.h,),
               const CommentsTitle(),
               SizedBox(height: 14.h,),
               const WriteCommentTextField(),
               SizedBox(height: 44.h,),
               const CommentsList(),
               SizedBox(height: 88.h,),
             ],
           ),
       ),
     ),
    );
  }
}

