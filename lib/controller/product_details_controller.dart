import 'package:get/get.dart';
import 'package:oirhair/model/static/product_model.dart';

class ProductDetailsController extends GetxController {
  ProductModel? product;

  @override
  void onInit() {
    super.onInit();
    // الحصول على المنتج من arguments
    if (Get.arguments != null && Get.arguments is ProductModel) {
      product = Get.arguments as ProductModel;
    }
  }

  @override
  void onClose() {
    super.onClose();
  }
}
