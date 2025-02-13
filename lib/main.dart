import 'package:flutter/material.dart';
import 'package:instaclone/Screens/Login/loginscreen.dart';
import 'package:instaclone/Screens/Login/signupscreen.dart';
import 'package:instaclone/Screens/Splash/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Instagram",
        theme: ThemeData.dark(),
        home: Splashscreen());
  }
}
