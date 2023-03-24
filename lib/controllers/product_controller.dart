import 'package:get/get.dart';
import 'package:listapp/models/product_model.dart';
import 'package:listapp/services/firestore_db.dart';

class ProductController extends GetxController {
  final products = <Product>[].obs;

  @override
  void onInit() {
    products.bindStream(FirestoreDB().getAllProducts());
    super.onInit();
  }
}
