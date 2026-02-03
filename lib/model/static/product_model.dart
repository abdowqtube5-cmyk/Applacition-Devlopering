class ProductModel {
  final String name;
  final String price; // Example if price is double
  final String image;
  final String desc;

  // Normal constructor (if your ProductModel has named parameters)
  ProductModel({required this.name, required this.price, required this.image, required this.desc});

  // Factory method to convert FromFirestore
  factory ProductModel.fromFirestore(Map<String, dynamic> data) {
    // Check if data is null or empty
    if (data.isEmpty) {
      return ProductModel(
        name: '',
        price: "",
        image: '',
        desc: '',
      );
    }
    return ProductModel(
      name: data['name'] as String,
      price: data['price'] as String,
      image: data['image'] as String,
      desc: data['description'] as String,
    );
  }
}