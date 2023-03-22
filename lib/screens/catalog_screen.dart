import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/widgets.dart';
import 'package:listapp/screens/cart_screen.dart';
import 'package:listapp/widgets/catalog_products.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              CatalogProducts(),
              FloatingActionButton.extended(
                onPressed: () {
                  Get.to(() => CartScreen());
                },
                label: Text('Go to Cart'),
                icon: Icon(Icons.shopping_cart),
              )
            ],
          ),
        ),
      ),
    );
  }
}
