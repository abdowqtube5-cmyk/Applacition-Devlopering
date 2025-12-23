import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:na/core/app_binding.dart';
import 'package:na/view/screen/login_screen.dart';
import 'package:na/view/screen/sginup_screen.dart';
import 'package:na/view/screen/welcome_screen.dart';

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
        GetPage(name: "/Login", page: () => LoginScreen(), binding: AppBinding()),
        GetPage(name: "/Sginup", page: () => SginupScreen(), binding: AppBinding()),
      ],
    );
  }
}