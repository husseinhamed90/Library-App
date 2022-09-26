import 'package:flutter/material.dart';

import '../../../../../Core/ReusableWidgets.dart';

class BookStatistics extends StatelessWidget {
  const BookStatistics({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        iconWithText(icon: Icons.favorite,height: 17,fontSize: 16,color: const Color(0xffD60505)),
        buildDivider(),
        iconWithText(icon: Icons.message,height: 17,fontSize: 16,color: const Color(0xff919191)),
        buildDivider(),
        iconWithText(icon: Icons.share,height: 17,fontSize: 16,color: const Color(0xff919191)),
        buildDivider(),
        iconWithText(icon: Icons.download,height: 17,fontSize: 16,color: const Color(0xff919191)),
      ],
    );
  }
  Container buildDivider() {
    return Container(
        height: 30,
        width: 1,
        color: const Color(0xffE2E2E2),
      );
  }
}