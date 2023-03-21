import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  final String name;
  final double price;
  final String imageUrl;

  const Product({
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  static Product fromSnapshot(DocumentSnapshot snap) {
    Product product = Product(
      name: snap['name'],
      price: snap['price'],
      imageUrl: snap['imageUrl'],
    );
    return product;
  }

  // factory Product.fromJson(Map<String, dynamic> json) {
  //   return Product(
  //     name: json['name'],
  //     price: json['price'],
  //     imageUrl: json['imageUrl'],
  //   );
  // }

  // static const List<Product> products = [
  //   Product(name: 'apple', price: 2.99, imageUrl: ''),
  //   Product(name: 'grapes', price: 4.59, imageUrl: ''),
  //   Product(name: 'mangoes', price: 3.20, imageUrl: ''),
  // ];
}
