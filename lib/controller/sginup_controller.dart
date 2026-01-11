import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SginupController extends GetxController {
  TextEditingController controllerFirstName = TextEditingController();
  TextEditingController controllerLastName = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPhoneNumber = TextEditingController();
  TextEditingController controllerCreatePassword = TextEditingController();
  TextEditingController controllerConfirmPassword = TextEditingController();

  bool isvisable = false;
  bool passwordMatch = true;

  void actionvisible() {
    isvisable = !isvisable;
    update();
  }

  String savedEmail = '';
  String savedPassword = '';

  void checkpasswordmatch() {
    if (controllerConfirmPassword.text.isEmpty) {
      passwordMatch = true;
    } else {
      passwordMatch =
          controllerCreatePassword.text == controllerConfirmPassword.text;
    }
    update();
  }

  void dosginup() {
    if (controllerEmail.text.isNotEmpty &&
        controllerCreatePassword.text.isNotEmpty &&
        controllerCreatePassword.text == controllerConfirmPassword.text) {
      savedEmail = controllerEmail.text.trim();
      savedPassword = controllerCreatePassword.text.trim();

      Get.toNamed("/Login");
    } else {
      Get.snackbar("Erorr", "Please enter valid data");
    }
  }

  @override
  void onClose() {
    controllerFirstName.dispose();
    controllerLastName.dispose();
    controllerEmail.dispose();
    controllerPhoneNumber.dispose();
    controllerCreatePassword.dispose();
    controllerConfirmPassword.dispose();
    super.onClose();
  }
}
