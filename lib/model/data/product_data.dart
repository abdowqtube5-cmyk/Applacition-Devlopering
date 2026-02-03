import 'package:cloud_firestore/cloud_firestore.dart';

class ProductData {
  CollectionReference products = FirebaseFirestore.instance.collection(
    "products",
  );

  List<QueryDocumentSnapshot> data = [];

    Future<ProductData> init() async {
    await getData();
    return this;
  }

  Future<void> getData() async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("products")
        .get();
    data.clear();
    data.addAll(querySnapshot.docs);
  }


}
void initaiolput()async{
  
}