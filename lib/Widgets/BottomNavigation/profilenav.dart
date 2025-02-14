import 'package:flutter/material.dart';
import 'package:instaclone/Uihelper/uihelper.dart';

class Profilenavigation extends StatelessWidget {
  const Profilenavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              SizedBox(
                width: 80,
              ),
              Icon(Icons.lock),
              Text(
                "Vedansh_vk",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
          centerTitle: true,
          actions: [Icon(Icons.more_horiz)],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Uihelper.Customimage(imgurl: "prof.png", height: 85),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [
                        Text(
                          "54",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Posts",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "854",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Followers",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "162",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Following",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // ignore: sized_box_for_whitespace
            Container(
              height: 65,
              width: 343,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Vedansh Kumar",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "I dont know about me",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "just do nothing",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 30,
              width: 343,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black87,
                          border: Border.all(width: 2, color: Colors.white)),
                      child: Icon(Icons.add),
                    ),
                    Text("New")
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
              child: AppBar(
                bottom: TabBar(
                    indicatorColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorAnimation: TabIndicatorAnimation.linear,
                    tabs: [
                      Tab(
                          icon: Uihelper.Customimage(
                              imgurl: "Grid.png", height: 40)),
                      Tab(
                        icon: Uihelper.Customimage(
                            imgurl: "Shape.png", height: 40),
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
