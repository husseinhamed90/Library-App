import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/AppColors.dart';
import '../../../Bookmark/presentation/pages/Bookmark.dart';
import '../../../Profile/presentation/pages/ProfilePage.dart';
import '../../../Search/presentation/pages/Search/Search.dart';
import 'ExplorePage.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 1));
    FlutterNativeSplash.remove();
  }
  int _selectedIndex = 0;
  static  final List<Widget> pages = <Widget>[
    const ExplorePage(),
    const Search(),
    const BookMark(),
    //const ConversationsPage(),
    const ProfilePage(),
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
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outline),
              label: 'Bookmark',
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
