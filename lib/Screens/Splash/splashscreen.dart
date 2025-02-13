import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:instaclone/Screens/Login/loginscreen.dart';
import 'package:instaclone/Uihelper/uihelper.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Loginscreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.Customimage(imgurl: "InstaImg.png", height: 100),
            SizedBox(
              height: 10,
            ),
            Uihelper.Customimage(imgurl: "instatext.png", height: 49),
          ],
        ),
      ),
    );
  }
}
