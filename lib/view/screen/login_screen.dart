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
          children: [
            Image.asset("assets/images/1.png"),
            SizedBox(height: 20),
            Text(
            "Welcome Back",
            style: GoogleFonts.inter(
              textStyle: TextStyle(fontSize: 35, color: Colors.teal[200]),
            )),
            Text(
            "Login",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(fontSize: 16, color: Colors.black),
            )),
            Image.asset("assets/images/2.png",width: 266.47, height: 198.58,),
            TextformfieldSginup(controller: controller.controllerEmail, hintText: "Email"),
            SizedBox(height: 30,),
            TextformfieldSginup(controller: controller.controllerPassword, hintText: "Password"),
            SizedBox(height: 30,),
            Button(text: "Login", color: Colors.teal[200], colorfont: Colors.white,),
            SizedBox(height: 10,),
            Container(
                
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image.asset("assets/images/Vector 1.png"),
                   Image.asset("assets/images/4.png"),
                   Image.asset("assets/images/Vector 2.png"),
                ],),
              ),
            SizedBox(height: 20,),
            Button(text: "Continue with Google",color: Colors.teal[200],colorfont: Colors.white,)
            ]
            )
    ));
  }
}