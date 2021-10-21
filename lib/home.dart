import 'package:aubergine/screens/home_screen.dart';
import 'package:aubergine/screens/practice.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'screens/profile.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentTabIndex = 0;

  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  List<Widget> tabs = [
    HomeScreen(),
    Practice(),
    HomeScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.book), label: ""),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.light_max), label: ""),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: "")
        ]),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return HomeScreen();
            case 1:
              return Practice();
            case 2:
              return HomeScreen();
            default:
              return ProfileScreen();
          }
        });
  }
}
