import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:na/controller/login_controller.dart';
import 'package:na/view/widget/button.dart';
import 'package:na/view/widget/textformfield_Sginup.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/images/1.png"),
            SizedBox(height: 20),
            Text(
              "Welcome Back",
              style: GoogleFonts.inter(
                textStyle: TextStyle(fontSize: 35, color: Colors.teal[200]),
              ),
            ),
            Text(
              "Login",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            Image.asset("assets/images/2.png", width: 266.47, height: 198.58),

            //حقل email
            TextformfieldSginup(
              controller: controller.controllerEmail,
              hintText: "Email",
            ),
            SizedBox(height: 30),
            //حقل password
            GetBuilder(
              builder: (LoginController controller) => TextformfieldSginup(
                controller: controller.controllerPassword,
                hintText: "Password",
                obscureText: controller.isvisable == false ? true : false,
                suffixIcon: IconButton(
                  onPressed: () {
                    controller.actionvisible();
                  },
                  icon: controller.isvisable == true
                      ? Icon(Icons.visibility)
                      : Icon(Icons.visibility_off),
                ),
              ),
            ),
            Row(
              spacing: 1,

              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MaterialButton(
                  height: 1,
                  padding: EdgeInsets.only(bottom: 30, right: 20),
                  onPressed: () {},
                  child: Text(
                    "forget password?",
                    style: TextStyle(fontSize: 10, color: Colors.teal[200]),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Button(
              text: "Login",
              color: Colors.teal[200],
              colorfont: Colors.white,
            ),

            SizedBox(height: 10),
            //inputs of links of google and sginup
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/Vector 1.png"),
                  Image.asset("assets/images/4.png"),
                  Image.asset("assets/images/Vector 2.png"),
                ],
              ),
            ),
            SizedBox(height: 20),
            Button(
              text: "Continue with Google",
              color: Colors.teal[200],
              colorfont: Colors.white,
            ),
            Container(
              padding: EdgeInsets.only(left: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t Have Account? ",
                    style: TextStyle(fontSize: 10),
                  ),
                  MaterialButton(
                    padding: EdgeInsets.only(right: 50),
                    onPressed: () {
                      Get.toNamed("/Sginup");
                    },
                    child: Text(
                      "Signup",
                      style: TextStyle(fontSize: 10, color: Colors.teal[200]),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
