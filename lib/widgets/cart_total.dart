import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:listapp/controllers/cart_controller.dart';

class CartTotal extends StatelessWidget {
  final CartController controller = Get.find();
  CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Card(
        elevation: 50,
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          title: Text(
            'Total:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          trailing: Text(
            '\$${controller.total}',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Text(
        //       'Total:',
        //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //     ),
        //     Text(
        //       '\$${controller.total}',
        //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
