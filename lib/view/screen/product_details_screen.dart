import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:na/controller/Shopping_cart_controller.dart';
import 'package:na/controller/product_details_controller.dart';
import 'package:na/model/static/product_model.dart';

class ProductDetailsScreen extends GetView<ProductDetailsController> {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final item = controller.product;

    // التحقق من وجود المنتج
    if (item == null) {
      return Scaffold(
        body: Center(
          child: Text("البيانات غير متوفرة"),
        ),
      );
    }

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
              Container(
                height: Get.height * 0.45,
                width: double.infinity,
                color: const Color(0xFFF1F8E9),
                child: Hero(
                  tag: item.name ?? 'product',
                  child: Image.asset(
                    item.image ?? '',
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(Icons.image_not_supported, size: 100);
                    },
                  ),
                ),
              ),
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
                      item.name ?? 'غير متوفر',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "${item.price ?? '0'} ر.س",
                      style: const TextStyle(fontSize: 20, color: Colors.green),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "وصف المنتج",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(item.desc ?? 'لا يوجد وصف'),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomButton(item),
      ),
    );
  }
  
  Widget _buildBottomButton(ProductModel item) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GetBuilder<ShoppingCartController>(
        builder: (cartController) => ElevatedButton(
          onPressed: () {
            cartController.addProduct(item);
            Get.snackbar(
              "السلة", 
              "تمت إضافة ${item.name ?? 'المنتج'} إلى السلة",
              snackPosition: SnackPosition.BOTTOM,
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            padding: EdgeInsets.symmetric(vertical: 15),
          ),
          child: const Text(
            "إضافة للسلة",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}