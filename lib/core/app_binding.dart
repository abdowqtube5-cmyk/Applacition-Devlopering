import 'package:get/get.dart';
import 'package:oirhair/controller/Shopping_cart_controller.dart';
import 'package:oirhair/controller/home_controller.dart';
import 'package:oirhair/controller/login_controller.dart';
import 'package:oirhair/controller/product_details_controller.dart';
import 'package:oirhair/controller/sginup_controller.dart';
import 'package:oirhair/controller/splash_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SginupController());
    Get.lazyPut(() => LoginController());
    Get.put(SplashController());
    Get.lazyPut(() => HomeController());
    Get.put(ShoppingCartController()); // يجب أن يبقى put عادي
    Get.lazyPut(() => ProductDetailsController()); // تغيير إلى lazyPut
  }
}
