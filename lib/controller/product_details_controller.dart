import 'package:get/get.dart';
import 'package:na/controller/home_controller.dart';

class ProductDetailsController extends GetxController {
  var product = Get.find<HomeController>();
  var products = HomeController();
  var name = HomeController().name;
  var image = HomeController().image;
  var price = HomeController().price;
  var desc = HomeController().desc;

  @override
  void onClose() {
    product.dispose();
    
    super.onClose();
  }
}
