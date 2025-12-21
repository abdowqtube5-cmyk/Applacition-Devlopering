import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:na/screen/login_screen.dart';
import 'package:na/screen/sginup_screen.dart';
import 'package:na/screen/welcome_screen.dart';

void main() {
  runApp(const LoginPro());
}

class LoginPro extends StatelessWidget {
  const LoginPro({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/Welcome",
      getPages: [
        GetPage(name: "/Welcome", page: () => WelcomeScreen(),),
        GetPage(name: "/Login", page: () => LoginScreen(),),
        GetPage(name: "/Sginup", page: () => SginupScreen(),),
      ],
    );
  }
}