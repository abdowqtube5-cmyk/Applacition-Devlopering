import 'package:get/get.dart';
import 'package:na/controller/login_controller.dart';
import 'package:na/controller/sginup_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SginupController());
    Get.lazyPut(() => LoginController());
  }
}
