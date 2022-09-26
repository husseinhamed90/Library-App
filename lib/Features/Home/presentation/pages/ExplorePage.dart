
import 'package:flutter/material.dart';
import '../widgets/LowerSectionOnExplorePage.dart';
import '../widgets/UpperSectionOnExplorePage.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: const [
          UpperSectionOnExplorePage(),
          LowerSectionOnExplorePage(),
        ]);
  }
}


