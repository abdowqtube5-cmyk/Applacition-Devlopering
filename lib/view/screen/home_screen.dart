import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:na/model/static/product_model.dart';
import '../../controller/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0xFFF1F8E9),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'متجر الروائع',
            style: TextStyle(color: Colors.black),
          ),
          leading: const Icon(Icons.menu, color: Colors.black),
          actions: [
            IconButton(
              onPressed: () {
                Get.toNamed("/Shopping");
              },
              icon: const Icon(Icons.shopping_cart, color: Colors.black),
            ),
          ],
        ),
        body: Obx(() {
          if (controller.isLoading.value) {
            return const Center(
              child: CircularProgressIndicator(color: Colors.green),
            );
          }

          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: GridView.builder(
              itemCount: controller.products.data.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.67,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                // استخراج البيانات من Firebase Document
                final doc = controller.products.data[index];
                final product = ProductModel(
                  name: doc['name'],
                  price: doc['price'],
                  image: doc['image'],
                  desc: doc['desc'],
                );
                return _buildProductCard(product, index);
              },
            ),
          );
        }),
      ),
    );
  }

  Widget _buildProductCard(ProductModel product, int index) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(product.image!, fit: BoxFit.contain),
            ),
          ),
          Text(
            product.name!,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(product.price!, style: const TextStyle(color: Colors.green)),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {
              // إرسال بيانات المنتج إلى صفحة التفاصيل
              Get.toNamed("/Product", arguments: product);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'اعرف المزيد',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}