import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listapp/controllers/cart_controller.dart';
import 'package:listapp/controllers/product_controller.dart';
// import 'package:listapp/models/product_model.dart';

class CatalogProducts extends StatelessWidget {
  final productController = Get.put(ProductController());
  CatalogProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Flexible(
            child: ListView.builder(
          itemCount: productController.products.length,
          itemBuilder: (BuildContext context, index) {
            return CatalogProductCard(index: index);
          },
        )));
  }
}

class CatalogProductCard extends StatelessWidget {
  final cartController = Get.put(CartController());
  final ProductController productController = Get.find();
  final int index;
  CatalogProductCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage:
                  NetworkImage(productController.products[index].imageUrl),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                productController.products[index].name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Expanded(
              child: Text(
                  ' ${productController.products[index].price.toString()}'),
            ),
            IconButton(
                onPressed: () {
                  cartController.addProduct(productController.products[index]);
                },
                icon: Icon(Icons.add_circle)),
          ],
        ));
  }
}
