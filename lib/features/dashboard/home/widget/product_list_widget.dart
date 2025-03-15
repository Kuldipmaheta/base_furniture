import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/core/routes/app_routes.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/extensions/build_context_extension.dart';
import 'package:furniture/design/utils/extensions/text_style_extension.dart';
import 'package:furniture/design/utils/gap.dart';
import 'package:furniture/features/dashboard/home/models/Home_response_model.dart';
import 'package:furniture/features/dashboard/home/widget/star_widget.dart';
import 'package:get/get.dart';

class ProductListWidget extends StatefulWidget {
  final int? index;
  final ProductList? model;
  const ProductListWidget({super.key, this.index, this.model
      // required this.item,
      });
  // final ProductList item;
  @override
  State<ProductListWidget> createState() => _ProductListWidgetState();
}

class _ProductListWidgetState extends State<ProductListWidget> {
  @override
  void initState() {
    // homeProvider = Provider.of<HomeDataProvider>(context, listen: false);
    // homeProvider?.homeResponseData();
    super.initState();
  }

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
              var id = widget.model?.id.toString() ?? "";
              print("id... $id");
              Get.toNamed(AppRoutes.productDetailScreen, arguments: id);
            },
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.network(
                widget.model?.productImage.toString() ?? "",
                fit: BoxFit.cover,
                width: imageSize,
                height: imageSize,
              ),
            ),
          ),
          Gap.gapH16,
          Row(
            // crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Visibility(
                // visible: widget.model?.vendorName != null,
                child: Flexible(
                  child: CustomText(
                    text: widget.model?.vendorName ?? "",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.titleSmall.withColor(AppColors.kGrey200).copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ),
              ),
              // const Spacer(),
              Flexible(child: StarWidget()),
            ],
          ),
          Gap.gapH6,
          CustomText(
            text: widget.model?.productName ?? "",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: context.titleMedium.withColor(AppColors.kBlack400).copyWith(fontWeight: FontWeight.w300),
          ),
          Gap.gapH10,
          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: widget.model?.originalPrice.toString() ?? "",
                maxLines: 2,
                style: context.titleMedium.withColor(AppColors.kBlack400).copyWith(fontWeight: FontWeight.w600),
              ),
              Gap.gapW10,
              // Spacer(),
              CustomText(
                text: widget.model?.discountedPrice.toString() ?? "",
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
