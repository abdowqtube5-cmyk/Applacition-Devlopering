import 'package:get/get.dart';
import 'package:na/model/static/product_model.dart';

class ShoppingCartController extends GetxController {
  List<ProductModel> products = [];

  // طريقة لإضافة منتج إلى السلة
  void addProduct(ProductModel product) {
    products.add(product);
    update(); // تحديث الواجهة
  }

  // طريقة لحذف منتج من السلة
  void removeProduct(ProductModel product) {
    products.remove(product);
    update();
  }
}