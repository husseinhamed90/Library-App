
import 'package:flutter/material.dart';
import 'package:library_app/Features/Upload_Book/presentation/Widgets/build_custom_app_bar_for_upload_book_pages.dart';
import 'package:library_app/Features/Upload_Book/presentation/pages/CategoryList/CategoryListWidgets/CategoriesGrid.dart';
import '../../../../../Core/ReusableWidgets.dart';
import '../EnteringBookDetails/EnteringBookDetails.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: buildCustomAppBarForUploadBookPages(context: context,title: "Category",subTitle: "Choose category in which you upload your book."),
      //appBar: AppBar(),
      body: ListView(
        children: [
        BuildCustomAppBarForUploadBookPages(context: context,title: "Category",subTitle: "Choose category in which you upload your book."),
          const CategoriesGrid(),
          buildCustomButton(context: context,function: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => const EnteringBookDetails(),));
          },paddingValue: 22,label: "Next"),
        ],
      ),
    );
  }


}
