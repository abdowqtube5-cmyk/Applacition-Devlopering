import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oirhair/controller/Shopping_cart_controller.dart';
import 'package:oirhair/model/static/product_model.dart';
import 'package:oirhair/view/widget/productCard.dart';

class ShoppingCartScreen extends GetView<ShoppingCartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBar(title: Text("السلة"), backgroundColor: Colors.orange),
      body: GetBuilder<ShoppingCartController>(
        builder: (controller) {
          if (controller.products.isEmpty) {
            return Center(
              child: Text(
                "السلة فارغة",
                style: TextStyle(fontSize: 24, color: Colors.grey),
              ),
            );
          }

          return ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: controller.products.length,
            itemBuilder: (context, index) {
              ProductModel product = controller.products[index];
              return ProductCard(
                image: product.image ?? '',
                name: product.name ?? 'غير متوفر',
                description: product.desc ?? '',
                onRemoveProduct: () {
                  controller.removeProduct(product);
                  Get.snackbar(
                    "تم الحذف",
                    "تم حذف ${product.name} من السلة",
                    snackPosition: SnackPosition.BOTTOM,
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
