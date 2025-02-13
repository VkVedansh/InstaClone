// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Uihelper {
  // Widget CustomTextButton({required String text, required VoidCallback callback}) {
  //   return TextButton( // ✅ Returning a single Widget (Not Working)
  //     onPressed: () {
  //       callback();
  //     },
  //     child: Text(
  //       text,
  //       style: TextStyle(fontSize: 13, color: Color(0XFF3797EF)),
  //     ),
  //   );
  // }

  //this is for login screen
  static CustomTextField(
      {required TextEditingController controller,
      required String text,
      required bool tohide}) {
    return Container(
      height: 50,
      width: 343,
      decoration: BoxDecoration(
          color: Color(0XFF121212),
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.white24,
          )),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: TextField(
          controller: controller,
          obscureText: tohide,
          decoration: InputDecoration(
              hintText: text,
              hintStyle: TextStyle(fontSize: 14, color: Colors.white),
              border: InputBorder.none),
        ),
      ),
    );
  }

  static Customimage({required String imgurl, required double height}) {
    return Image.asset("asssets/image/$imgurl", height: height);
  }

  static CustomButton(
      {required VoidCallback callback, required String buttonname}) {
    return SizedBox(
      height: 45,
      width: 343,
      child: ElevatedButton(
          onPressed: () {
            callback();
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0XFF3797EF),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
          child: Center(
              child: Text(
            buttonname,
            style: TextStyle(fontSize: 14, color: Colors.white),
          ))),
    );
  }
}
