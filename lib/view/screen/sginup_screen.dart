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
            SizedBox(height: 40),
            TextformfieldSginup(
              controller: controller.controllerFirstName,
              hintText: "First Name",
            ),
            SizedBox(height: 15),
            TextformfieldSginup(
              controller: controller.controllerLastName,
              hintText: "Last Name",
            ),
            SizedBox(height: 15),
            TextformfieldSginup(
              controller: controller.controllerEmail,
              hintText: "Email",
            ),
            SizedBox(height: 15),
            TextformfieldSginup(
              controller: controller.controllerPhoneNumber,
              hintText: "Phone Number",
            ),
            SizedBox(height: 15),

            GetBuilder<SginupController>(
              builder: (SginupController controller) => TextformfieldSginup(
                obscureText: !controller.isvisable,
                onChanged: (value) => controller.checkpasswordmatch(),
                controller: controller.controllerCreatePassword,
                hintText: "Create Password",
                suffixIcon: IconButton(
                  onPressed: () async {
                    controller.actionvisible();
                  },
                  icon: controller.isvisable == true
                      ? Icon(Icons.visibility)
                      : Icon(Icons.visibility_off),
                ),
              ),
            ),

            SizedBox(height: 15),
            GetBuilder(
              builder: (SginupController controller) => TextformfieldSginup(
                obscureText: !controller.isvisable,
                controller: controller.controllerConfirmPassword,
                onChanged: (Value) => controller.checkpasswordmatch(),
                borderColor: controller.passwordMatch
                    ? Colors.teal[200]
                    : Colors.teal[200],
                erorrText: controller.passwordMatch ? null : "كلمة المرور غير متطابقة",
                hintText: "Confirm Password",
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

            SizedBox(height: 10),
            Button(
              text: "Sginup",
              color: Colors.teal[200],
              colorfont: Colors.white,
              onPressed: () => controller.dosginup(),
            ),
            SizedBox(height: 5),
            MaterialButton(
              onPressed: () {},
              child: Image.asset("assets/images/3.png"),
            ),
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
                    "Already have an Account?",
                    style: TextStyle(fontSize: 10),
                  ),
                  MaterialButton(
                    padding: EdgeInsets.only(right: 50),
                    onPressed: () {
                      Get.toNamed("/Login");
                    },
                    child: Text(
                      "Login",
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
