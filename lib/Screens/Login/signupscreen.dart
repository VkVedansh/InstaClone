import 'package:flutter/material.dart';
import 'package:instaclone/Screens/Login/loginscreen.dart';
import 'package:instaclone/Uihelper/uihelper.dart';

class Signupscreen extends StatelessWidget {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController usernamecontroller = TextEditingController();

  Signupscreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.Customimage(imgurl: "instatext.png", height: 100),
            SizedBox(
              height: 10,
            ),
            Uihelper.CustomTextField(
                controller: usernamecontroller,
                text: "UserName",
                tohide: false),
            SizedBox(
              height: 10,
            ),
            Uihelper.CustomTextField(
                controller: emailcontroller, text: "Email", tohide: false),
            SizedBox(
              height: 10,
            ),
            Uihelper.CustomTextField(
                controller: passwordcontroller, text: "Password", tohide: true),
            SizedBox(
              height: 20,
            ),
            Uihelper.CustomButton(callback: () {}, buttonname: "Sign Up"),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already Have Account?",
                  style: TextStyle(fontSize: 13, color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Loginscreen(),
                        ));
                  },
                  child: Text(
                    "Log In.",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0XFF3797EF),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
