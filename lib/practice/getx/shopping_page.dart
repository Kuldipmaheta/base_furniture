import 'package:flutter/material.dart';
import 'package:furniture/practice/getx/shopping_controller.dart';
import 'package:get/get.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({super.key});

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  final ShoppingController shoppingController = Get.put(ShoppingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: GetX<ShoppingController>(builder: (controller) {
              return ListView.builder(
                  // itemCount: controller.products.length,
                  itemBuilder: (context, index) {
                return const Card();
              });
            })),
            const Text(
              'Total Amount',
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
