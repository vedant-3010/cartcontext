import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listapp/widgets/cart_product.dart';
import 'package:listapp/widgets/cart_total.dart';
import 'package:listapp/widgets/cart_total.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Your Cart'),
        ),
        body: SafeArea(
          child: Column(children: [
            CartProducts(),
            CartTotal(),
          ]),
        ));
  }
}
