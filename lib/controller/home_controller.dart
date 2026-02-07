import 'package:get/get.dart';
import 'package:oirhair/model/data/product_data.dart';

class HomeController extends GetxController {
  // قائمة المنتجات (أضفت لك المنتجات التي ظهرت في الصور)
  ProductData products = Get.find<ProductData>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadProducts();
  }

  void loadProducts() async {
    isLoading.value = true;
    // محاكاة تحميل البيانات من قاعدة البيانات
    await Future.delayed(const Duration(seconds: 4));
    products.getData();
    isLoading.value = false;
  }
}
