import 'package:flutter/material.dart';

class Profilescreen extends StatelessWidget {
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

  Profilescreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
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
    ));
  }
}
