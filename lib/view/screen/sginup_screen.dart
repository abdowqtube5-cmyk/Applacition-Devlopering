import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:na/controller/sginup_controller.dart';
import 'package:na/view/widget/button.dart';
import 'package:na/view/widget/textformfield_Sginup.dart';

class SginupScreen extends GetView<SginupController> {
  const SginupScreen({super.key});

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
              "Create Account",
              style: GoogleFonts.inter(
                textStyle: TextStyle(fontSize: 35, color: Colors.teal[200]),
              ),
            ),
        
            Text(
              "Enter your Personal Data",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(fontSize: 16, color: Colors.black),
              ),
              
            ),
            SizedBox(height: 40,),
            TextformfieldSginup(controller: controller.controllerFirstName, hintText: "First Name"),
            SizedBox(height: 15,),
            TextformfieldSginup(controller: controller.controllerLastName, hintText: "Last Name"),
            SizedBox(height: 15,),
            TextformfieldSginup(controller: controller.controllerEmail, hintText: "Email"),
            SizedBox(height: 15,),
            TextformfieldSginup(controller: controller.controllerPhoneNumber, hintText: "Phone Number"),
            SizedBox(height: 15,),
            TextformfieldSginup(controller: controller.controllerCreatePassword, hintText: "Create Password"),
            SizedBox(height: 15,),
            TextformfieldSginup(controller: controller.controllerConfirmPassword, hintText: "Confirm Password"),
            SizedBox(height: 10,),
            Button(text: "Sginup", color: Colors.teal[200],colorfont: Colors.white,),
            SizedBox(height: 5,),
            MaterialButton(onPressed: (){},child: Image.asset("assets/images/3.png")),
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
          ],
        ),
      ),
    );
  }
}