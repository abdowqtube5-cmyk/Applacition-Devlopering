import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  bool isvisable = false;

  void actionvisible() {
    isvisable = !isvisable;
    update();
  }
}
