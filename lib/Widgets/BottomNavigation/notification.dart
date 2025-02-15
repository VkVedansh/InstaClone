import 'package:flutter/material.dart';
import 'package:instaclone/Screens/notificatinheart/Followingscreen.dart';
import 'package:instaclone/Screens/notificatinheart/youscreen.dart';

class Notificationnav extends StatefulWidget {
  const Notificationnav({super.key});

  @override
  State<Notificationnav> createState() => _NotificationnavState();
}

class _NotificationnavState extends State<Notificationnav> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  text: "Following",
                ),
                Tab(
                  text: "You",
                )
              ]),
        ),
        body: TabBarView(children: [
          Followingscreen(),
          Youscreen(),
        ]),
      ),
    );
  }
}
