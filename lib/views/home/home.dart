import 'package:flutter/material.dart';
import 'package:youtube_assignment/views/create/create.dart';
import 'package:youtube_assignment/views/home/bottom_nav.dart';
import 'package:youtube_assignment/views/homepage/home_page.dart';
import 'package:youtube_assignment/views/library/library.dart';
import 'package:youtube_assignment/views/shorts/shorts.dart';
import 'package:youtube_assignment/views/subscriptions/subscriptions.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<BottomNavItem> bottomNav = [];
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    bottomNav = [
      const BottomNavItem(HomePage()),
      const BottomNavItem(Shorts()),
      const BottomNavItem(Create()),
      const BottomNavItem(Subscription()),
      const BottomNavItem(Library()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomNav[currentIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        items: const [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: 'Shorts',
              icon: Icon(Icons.explore_outlined),
              activeIcon: Icon(Icons.explore)),
          BottomNavigationBarItem(
              label: 'Create',
              icon: Icon(Icons.add_circle_outline),
              activeIcon: Icon(Icons.add_circle)),
          BottomNavigationBarItem(
            label: 'Subscriptions',
            icon: Icon(Icons.subscriptions_outlined),
            activeIcon: Icon(Icons.subscriptions),
          ),
          BottomNavigationBarItem(
              label: 'Library',
              icon: Icon(Icons.video_library_outlined),
              activeIcon: Icon(Icons.video_library)),
        ],
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
      ),
    );
  }
}
