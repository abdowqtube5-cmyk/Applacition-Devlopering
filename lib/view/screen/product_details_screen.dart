import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:na/controller/product_details_controller.dart';

class ProductDetailsScreen extends GetView<ProductDetailsController> {
  const ProductDetailsScreen({super.key}); // حذفنا المتغير من هنا

  @override
  Widget build(BuildContext context) {
    // الوصول للمنتج عبر المتحكم
    final item = controller.product;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const CircleAvatar(
              backgroundColor: Colors.white70,
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
                size: 20,
              ),
            ),
            onPressed: () => Get.back(),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // عرض الصورة باستخدام Hero
              Container(
                height: Get.height * 0.45,
                width: double.infinity,
                color: const Color(0xFFF1F8E9),
                child: Hero(
                  tag: item.name, // التاج المتناسق مع الصفحة الرئيسية
                  child: Image.asset(item.image, fit: BoxFit.contain),
                ),
              ),

              // محتوى التفاصيل
              Container(
                transform: Matrix4.translationValues(0.0, -30.0, 0.0),
                padding: const EdgeInsets.all(25),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "${item.price} ر.س",
                      style: const TextStyle(fontSize: 20, color: Colors.green),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "وصف المنتج",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(item.desc ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomButton(item.name),
      ),
    );
  }

  // ودجت الزر السفلي
  Widget _buildBottomButton(String name) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ElevatedButton(
        onPressed: () => Get.snackbar("السلة", "تمت إضافة $name"),
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        child: const Text("إضافة للسلة", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
