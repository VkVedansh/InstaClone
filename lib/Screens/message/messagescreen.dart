import 'package:flutter/material.dart';
import 'package:instaclone/Uihelper/uihelper.dart';

class Messagescreen extends StatelessWidget {
  TextEditingController searchcontroller = TextEditingController();
  var arrContent = [
    {"image": "photo.png", "name": "Tarun", "lastmsg": "Have a nice Day Bro"},
    {"image": "photo.png", "name": "Tarun", "lastmsg": "Have a nice Day Bro"},
  ];

  Messagescreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 88,
        title: Text(
          "Vedansh_vk",
          style: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.add,
            size: 25,
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 13,
              ),
              Container(
                height: 36,
                width: 380,
                decoration: BoxDecoration(
                    color: Color(0XFF262626),
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: searchcontroller,
                  decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                        "asssets/images/${arrContent[index]["image"].toString()}"),
                  ),
                  title: Text(arrContent[index]["name"].toString(),
                      style: TextStyle(fontSize: 13)),
                  subtitle: Text(
                    arrContent[index]["lastmsg"].toString(),
                    style: TextStyle(fontSize: 13),
                  ),
                );
              },
              itemCount: arrContent.length,
            ),
          )
        ],
      ),
    );
  }
}
