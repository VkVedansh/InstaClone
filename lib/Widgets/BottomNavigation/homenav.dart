import 'package:flutter/material.dart';
import 'package:instaclone/Uihelper/uihelper.dart';

class homenavigation extends StatelessWidget {
  var arrContent = [
    {
      "img":
          "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
      "name": "Your Story"
    },
    {
      "img":
          "https://www.crushpixel.com/big-static7/preview4/take-photo-164370.jpg",
      "name": "Your Story"
    },
    {
      "img":
          "https://www.crushpixel.com/big-static7/preview4/take-photo-164370.jpg",
      "name": "Your Story"
    },
    {
      "img":
          "https://www.crushpixel.com/big-static7/preview4/take-photo-164370.jpg",
      "name": "Your Story"
    },
    {
      "img":
          "https://www.crushpixel.com/big-static7/preview4/take-photo-164370.jpg",
      "name": "Your Story"
    },
    {
      "img":
          "https://www.crushpixel.com/big-static7/preview4/take-photo-164370.jpg",
      "name": "Your Story"
    },
    // {
    //   "img":
    //       "https://www.crushpixel.com/big-static7/preview4/take-photo-164370.jpg",
    //   "name": "Your Story"
    // },
  ];

  homenavigation({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Uihelper.Customimage(imgurl: "camerainsta.png", height: 22),
        title: Uihelper.Customimage(imgurl: "instatext.png", height: 28),
        centerTitle: true,
        toolbarHeight: 88,
        backgroundColor: Color(0XFF121212),
        actions: [
          Uihelper.Customimage(imgurl: "IGTV.png", height: 22),
          SizedBox(
            width: 15,
          ),
          Uihelper.Customimage(imgurl: "Messanger.png", height: 22),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 70,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        NetworkImage(arrContent[index]["img"].toString()),
                  ),
                );
              },
              itemCount: arrContent.length,
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),
    );
  }
}
