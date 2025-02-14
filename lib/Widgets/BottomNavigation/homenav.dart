import 'package:flutter/material.dart';
import 'package:instaclone/Screens/message/messagescreen.dart';
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
      "name": " Amanda"
    },
    {
      "img":
          "https://www.crushpixel.com/big-static7/preview4/take-photo-164370.jpg",
      "name": "Aman"
    },
    {
      "img":
          "https://www.crushpixel.com/big-static7/preview4/take-photo-164370.jpg",
      "name": "Anuj"
    },
    {
      "img":
          "https://www.crushpixel.com/big-static7/preview4/take-photo-164370.jpg",
      "name": "Yogesh"
    },
    {
      "img":
          "https://www.crushpixel.com/big-static7/preview4/take-photo-164370.jpg",
      "name": "Chandra"
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
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Messagescreen()));
            },
            child: Uihelper.Customimage(imgurl: "Messanger.png", height: 22),
          )
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
          ),
          SizedBox(
            height: 30,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      arrContent[index]["name"].toString(),
                      style: TextStyle(fontSize: 12),
                    ),
                  );
                },
                itemCount: arrContent.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Container(
            height: 54,
            width: double.infinity,
            color: Colors.black12,
            child: ListTile(
                title: Text(
                  "Ellyse_Perry ",
                  style: TextStyle(fontSize: 13, color: Color(0XFFF9F9F9)),
                ),
                subtitle: Text(
                  "London,Bihar",
                  style: TextStyle(fontSize: 10, color: Color(0XFFF9F9F9)),
                ),
                trailing: Icon(Icons.more_horiz),
                leading: Uihelper.Customimage(imgurl: "oval.png", height: 35)),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 375,
              width: double.infinity,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Image.asset(
                "asssets/image/Rectangle.png",
                fit: BoxFit.cover,
              )),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Uihelper.Customimage(imgurl: "heart.png", height: 22),
              SizedBox(
                width: 15,
              ),
              Uihelper.Customimage(imgurl: "Comment.png", height: 22),
              SizedBox(
                width: 15,
              ),
              Uihelper.Customimage(imgurl: "Messanger.png", height: 22),
              SizedBox(
                width: 275,
              ),
              Uihelper.Customimage(imgurl: "Save.png", height: 22)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 8,
              ),
              Uihelper.Customimage(imgurl: "liked.png", height: 15),
              SizedBox(
                width: 5,
              ),
              Text(
                "Liked by ",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "Vedansh_Vk18 ",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text(
                "and ",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "46,448 others",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                "Ellyse Perry ",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text(
                " The game in Japan was amazing and I want",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
