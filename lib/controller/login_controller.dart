import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:na/controller/sginup_controller.dart';

class LoginController extends GetxController {
  SginupController sginupController = Get.find<SginupController>();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  bool isvisable = false;

  void actionvisible() {
    isvisable = !isvisable;
    update();
  }

  bool aqeal() {
    return sginupController.savedEmail.isNotEmpty &&
        sginupController.savedPassword.isNotEmpty &&
        controllerEmail.text == sginupController.savedEmail &&
        controllerPassword.text == sginupController.savedPassword;
  }
}
