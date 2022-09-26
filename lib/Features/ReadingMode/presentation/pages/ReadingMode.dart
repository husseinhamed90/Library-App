import 'package:flutter/material.dart';
import 'package:library_app/Core/AppColors.dart';

class ReadingMode extends StatefulWidget {
  const ReadingMode({super.key});

  @override
  _ReadingModeState createState() => _ReadingModeState();
}

class _ReadingModeState extends State<ReadingMode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Reading Mode"),backgroundColor: primaryColor,),
        body: Container());
  }
}
