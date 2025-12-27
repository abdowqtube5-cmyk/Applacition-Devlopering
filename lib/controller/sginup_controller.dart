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

  void actionvisible() {
    isvisable = !isvisable;
    update();
  }
}
