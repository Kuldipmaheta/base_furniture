import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/core/constant/strings.dart';
import 'package:furniture/core/routes/app_routes.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/extensions/build_context_extension.dart';
import 'package:furniture/design/utils/extensions/text_style_extension.dart';
import 'package:furniture/design/utils/gap.dart';
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
          CustomText(
            text: AppLabels.vendorName,
            maxLines: 1,
            style: context.titleSmall.withColor(AppColors.kGrey200).copyWith(fontWeight: FontWeight.w400),
          ),
          Gap.gapH6,
          CustomText(
            text: AppLabels.vendorMsg,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: context.titleMedium.withColor(AppColors.kBlack400).copyWith(fontWeight: FontWeight.w300),
          ),
          Gap.gapH10,
          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "KWD 699",
                maxLines: 2,
                style: context.titleMedium.withColor(AppColors.kBlack400).copyWith(fontWeight: FontWeight.w600),
              ),
              Gap.gapW10,
              // Spacer(),
              CustomText(
                text: "KWD 599",
                maxLines: 2,
                style: context.titleMedium.withColor(AppColors.kGrey200).copyWith(
                    fontWeight: FontWeight.w300,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: AppColors.kGrey200),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
