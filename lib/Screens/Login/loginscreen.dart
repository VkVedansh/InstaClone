import 'package:flutter/material.dart';
import 'package:instaclone/Screens/Login/signupscreen.dart';
import 'package:instaclone/Uihelper/uihelper.dart';

class Loginscreen extends StatelessWidget {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  Loginscreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.Customimage(imgurl: "instatext.png", height: 100),
            SizedBox(
              height: 20,
            ),
            Uihelper.CustomTextField(
                controller: emailcontroller, text: "Email", tohide: false),
            SizedBox(
              height: 10,
            ),
            Uihelper.CustomTextField(
                controller: passwordcontroller, text: "Password", tohide: true),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Forget Password ?",
                        style:
                            TextStyle(fontSize: 13, color: Color(0XFF3797EF)),
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Uihelper.CustomButton(callback: () {}, buttonname: "Log In"),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.Customimage(imgurl: "Fbicon.png", height: 12),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Login With Facebook",
                    style: TextStyle(fontSize: 13, color: Color(0XFF3797EF)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                "OR",
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Dont Have Account?",
                  style: TextStyle(fontSize: 13, color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Signupscreen(),
                        ));
                  },
                  child: Text(
                    "Sign Up.",
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
