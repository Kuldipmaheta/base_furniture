import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/core/routes/app_routes.dart';
import 'package:furniture/design/utils/gap.dart';
import 'package:furniture/features/dashboard/cart/cart_screen.dart';
import 'package:get/get.dart';

class ProductListWidget extends StatelessWidget {
  // final Furniture item;
  const ProductListWidget({
    super.key,
    // required this.item,
  });
  @override
  Widget build(BuildContext context) {
    // String? name;
    // List products = [];
    double imageSize = ((MediaQuery.of(context).size.width) - ((24 * 2) + 20)) / 2;
    return Container(
      // color: Colors.red,
      margin: const EdgeInsets.only(right: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Get.toNamed(AppRoutes.productDetailScreen);
            },
            child: Image.asset(
              'assets/images/image2.png',
              fit: BoxFit.cover,
              width: imageSize,
              height: imageSize,
            ),
          ),
          Gap.gapH16,
          const CustomText(
            title: "Vendor name",
            color: AppColors.kGrey200,
          ),
          Gap.gapH6,
          const Text(
            'Eames Plastic Iconic Chair\nin White Colour',
            maxLines: 2,
          ),
          // CustomText(title: 'Eames Plastic Iconic Chair in White Colour'),
          Gap.gapH10,
          const Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'KWD 620',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              // Spacer(),
              Text(
                'KWD 677',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
