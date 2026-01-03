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
    if (sginupController.controllerEmail.text.isEmpty &&
        sginupController.controllerCreatePassword.text.isEmpty) {
      return false;
    }else if (sginupController.controllerEmail == controllerEmail &&
            sginupController.controllerCreatePassword == controllerPassword) {
          return true;
        }else{return false;}
  }
}
