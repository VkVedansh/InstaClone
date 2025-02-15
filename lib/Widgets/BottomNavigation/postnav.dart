import 'package:flutter/material.dart';

class postnavigation extends StatefulWidget {
  const postnavigation({super.key});

  @override
  State<postnavigation> createState() => _postnavigationState();
}

class _postnavigationState extends State<postnavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text("Post Screen")),
      ),
    );
  }
}
