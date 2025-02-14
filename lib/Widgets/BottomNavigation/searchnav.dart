import 'package:flutter/material.dart';
import 'package:instaclone/Uihelper/uihelper.dart';

class searchnavigation extends StatelessWidget {
  TextEditingController searchcontroller = TextEditingController();
  var arrContent = [
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxglj3iwmlB9Y9oZBH3qicAgZcnj6dtdHN2Q&s"
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxglj3iwmlB9Y9oZBH3qicAgZcnj6dtdHN2Q&s"
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQG_RiBjyy9eKUWaF8HaLnBpL_DkJ6f1fJaTg&s"
    },
  ];

  searchnavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 55,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                height: 36,
                width: 327,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0XFF262626)),
                child: TextField(
                  controller: SearchController(),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search",
                      hintStyle:
                          TextStyle(fontSize: 16, color: Color(0XFF8E8E93)),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Uihelper.Customimage(imgurl: "Live.png", height: 20)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                  height: 32,
                  width: 75,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white12),
                      borderRadius: BorderRadius.circular(2)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Uihelper.Customimage(imgurl: "IGTV.png", height: 15),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "IGTV",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      )
                    ],
                  )),
              SizedBox(
                width: 10,
              ),
              Container(
                  height: 32,
                  width: 75,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white12),
                      borderRadius: BorderRadius.circular(2)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Uihelper.Customimage(imgurl: "shop.png", height: 15),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Shop",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      )
                    ],
                  )),
            ],
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemBuilder: (context, index) {
                return Container(
                  clipBehavior: Clip.antiAlias,
                  height: 124,
                  width: 124,
                  decoration: BoxDecoration(),
                  child: Image.network(
                    arrContent[index]["image"].toString(),
                    fit: BoxFit.cover,
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
