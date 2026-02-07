import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oirhair/controller/Shopping_cart_controller.dart';
import 'package:oirhair/controller/product_details_controller.dart';
import 'package:oirhair/core/app_binding.dart';
import 'package:oirhair/core/services/myservice.dart';

import 'package:oirhair/view/screen/home_screen.dart';
import 'package:oirhair/view/screen/login_screen.dart';
import 'package:oirhair/view/screen/product_details_screen.dart';
import 'package:oirhair/view/screen/sginup_screen.dart';
import 'package:oirhair/view/screen/shopping_cart_screen.dart';
import 'package:oirhair/view/screen/splash_screen.dart';
import 'package:oirhair/view/screen/welcome_screen.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await initialServices();
  runApp(const LoginPro());
}

class LoginPro extends StatelessWidget {
  const LoginPro({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: AppBinding(),
      initialRoute: "/Splash",
      getPages: [
        GetPage(name: "/Welcome", page: () => WelcomeScreen()),
        GetPage(
          name: "/Login",
          page: () => LoginScreen(),
          binding: AppBinding(),
        ),
        GetPage(
          name: "/Sginup",
          page: () => SginupScreen(),
          binding: AppBinding(),
        ),
        GetPage(name: "/Splash", page: () => SplashScreen()),
        GetPage(name: "/home", page: () => HomeScreen()),
        GetPage(
          name: "/Product",
          page: () => ProductDetailsScreen(),
          binding: BindingsBuilder(() {
            Get.lazyPut(() => ProductDetailsController());
          }),
        ),
        GetPage(
          name: "/Shopping",
          page: () => ShoppingCartScreen(),
          binding: BindingsBuilder(() {
            Get.find<ShoppingCartController>(); // للتأكد من وجوده
          }),
        ),
      ],
    );
  }
}
