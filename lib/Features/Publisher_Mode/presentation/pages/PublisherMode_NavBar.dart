
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/AppColors.dart';
import '../../../Publisher_Profile/presentation/pages/PublisherProfile.dart';
import 'PublisherModeExplore/PublisherModeExplore.dart';

class PublisherMode_NavBar extends StatefulWidget {
  const PublisherMode_NavBar({super.key});

  @override
  _PublisherMode_NavBarState createState() => _PublisherMode_NavBarState();
}

class _PublisherMode_NavBarState extends State<PublisherMode_NavBar> {

  int _selectedIndex = 0;
  static  final List<Widget> pages = <Widget>[
    const PublisherModeExplore(),
   // const ConversationsPage(),
    const PublisherProfile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items:  const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon:  Icon(Icons.menu_book_outlined),
              label: 'Explore',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.messenger_outline),
            //   label: 'Chat',
            // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: primaryColor,
          onTap: _onItemTapped,
          elevation: 0,
          unselectedItemColor: const Color(0xff959595),
          iconSize: 22,
          selectedFontSize: 10.sp,
          unselectedFontSize: 10.sp,
          backgroundColor: secondColor,
        ),
        body: pages[_selectedIndex],

      ),
    );
  }
}


