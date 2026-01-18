import 'package:get/get.dart';
import 'package:na/model/static/product_model.dart';

class HomeController extends GetxController {
  // قائمة المنتجات (أضفت لك المنتجات التي ظهرت في الصور)
  var products = <ProductModel>[];
  var isLoading = true.obs;
  var name = "";
  var price = "";
  var image = "";
  var desc = "";

  @override
  void onInit() {
    super.onInit();
    loadProducts();
  }

  void loadProducts() async {
    isLoading.value = true;
    // محاكاة تحميل البيانات من قاعدة البيانات
    await Future.delayed(const Duration(seconds: 4));

    products.addAll([
      ProductModel(
        name: "زيت الأرغان الملكي",
        price: "150",
        image: "assets/images/oilhaur1.png",
        desc: "مستخلص من لوز الأرغان النقي لترطيب عميق ولمعان فائق.",
      ),
      ProductModel(
        name: "مستخلص الصبار واللوز",
        price: "80",
        image: "assets/images/oilhaur2.png",
        desc: "تركيبة خفيفة لتهدئة فروة الرأس وتقوية الجذور.",
      ),
      ProductModel(
        name: "زيت جوز الهند العضوي",
        price: "95",
        image: "assets/images/oilhaur3.png",
        desc: "زيت طبيعي 100% لتغذية الشعر الجاف والمتقصف.",
      ),
      ProductModel(
        name: "مصل إكليل الجبل المركز",
        price: "120",
        image: "assets/images/oilhaur4.png",
        desc: "محفز طبيعي لنمو الشعر وزيادة كثافته.",
      ),
      ProductModel(
        name: "زيت الجوجوبا الذهبي",
        price: "110",
        image: "assets/images/oilhaur5.png",
        desc: "يوازن زيوت الفروة الطبيعية ويمنح شعرك ملمساً حريرياً.",
      ),
      ProductModel(
        name: "خلطة الزيوت السبعة",
        price: "190",
        image: "assets/images/oilhaur6.png",
        desc: "مزيج فاخر من أنقى الزيوت الطبيعية لعناية متكاملة.",
      ),
    ]);
    isLoading.value = false;
  }
}
