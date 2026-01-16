import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // نقوم بحقن المتحكم هنا. بمجرد حقنه، سيعمل كود الـ onReady الموجود بداخله تلقائياً
    

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color.fromARGB(255, 255, 255, 255), Color.fromARGB(255, 255, 255, 255)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // تأكد من أن الاسم والمسار يطابق ما في pubspec.yaml
            Image.asset(
              "assets/images/shmpoo.png", 
              width: 200,
              // هذا السطر يضمن عدم ظهور علامة X إذا كان المسار صحيحاً
            ),
            const SizedBox(height: 20),
            const Text(
              'روائع الشامبو',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2E7D32),
              ),
            ),
          ],
        ),
      ),
    );
  }
}