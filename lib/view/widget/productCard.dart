import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  // البناء
  const ProductCard({
    Key? key,
    required this.image, // تغيير من imageUrl إلى image
    required this.name,
    required this.description,
    this.onRemoveProduct, String? desc, // تغيير إلى onRemoveProduct للتعامل مع إزالة المنتج
  }) : super(key: key);

  final String image; // تغيير من imageUrl إلى image
  final String name;
  final String description;
  final VoidCallback? onRemoveProduct; // تغيير اسم المعلمة
  
  @override
  Widget build(BuildContext context) {
    return Card(
      // استبدال Container بـ Card كما طلبت
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: <Widget>[
          // صورة المنتج
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              image, // استبدال imageUrl بـ image
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
          ),
          // معلومات المنتج في أسفل ال<Card>
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
          // زر IconButton في الزاوية اليمنى العليا مع علامة X
          Positioned(
            top: 16,
            right: 16,
            child: IconButton(
              iconSize: 30,
              icon: const Icon(Icons.close), // علامة X (×)
              onPressed: onRemoveProduct, // تغيير إلى onRemoveProduct
              color: Colors.red, // لون أحمر كما طلبت
            ),
          ),
        ],
      ),
    );
  }
}