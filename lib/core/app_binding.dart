import 'package:get/get.dart';
import 'package:na/controller/sginup_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SginupController());
  }
}
