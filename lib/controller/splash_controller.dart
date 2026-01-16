import 'dart:async';
import 'package:get/get.dart';
import '../view/screen/home_screen.dart'; // تأكد من المسار الصحيح للرئيسية

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    // المنطق البرمجي للمؤقت موجود هنا فقط
    _startTimer();
  }

  void _startTimer() {
    Timer(const Duration(seconds: 3), () {
      // الانتقال لواجهة Home وحذف السبلتش تماماً من الذاكرة
      Get.offAll(() => const HomeScreen(), 
          transition: Transition.fade, 
          duration: const Duration(milliseconds: 1000));
    });
  }
}