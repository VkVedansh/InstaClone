import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instaclone/Uihelper/uihelper.dart';
import 'package:instaclone/Widgets/BottomNavigation/homenav.dart';
import 'package:instaclone/Widgets/BottomNavigation/notification.dart';
import 'package:instaclone/Widgets/BottomNavigation/postnav.dart';
import 'package:instaclone/Widgets/BottomNavigation/profilenav.dart';
import 'package:instaclone/Widgets/BottomNavigation/searchnav.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int CurrentIndex = 0; //used in navigation
  List<Widget> pages = [
    homenavigation(),
    searchnavigation(),
    postnavigation(),
    Notificationnav(),
    Profilenavigation(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: CurrentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.black,
          onTap: (index) {
            setState(() {
              CurrentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search_circle_fill), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.plus_app_fill), label: "Post"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.heart_circle_fill),
                label: "Notificaton"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person_fill), label: "Profile"),
          ]),
      body: IndexedStack(
        index: CurrentIndex,
        children: pages,
      ),
    );
  }
}
