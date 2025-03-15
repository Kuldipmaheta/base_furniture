import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/core/constant/strings.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/extensions/build_context_extension.dart';
import 'package:furniture/design/utils/gap.dart';
import 'package:furniture/features/dashboard/cart/models/cart_response_model.dart';
import 'package:furniture/features/dashboard/cart/widget/counter_widget.dart';

class CartProductListWidget extends StatelessWidget {
  final ProductList? model;
  const CartProductListWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            //..container border radius
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Image.network(
                model?.productImage ?? "",
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.width / 3,
              ),
            ),
          ],
        ),
        Gap.gapW16,
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: model?.vendorName ?? "",
                style: context.titleSmall.copyWith(color: AppColors.kGrey200, fontWeight: FontWeight.w400),
                // color: AppColors.kGrey200,
              ),
              Gap.gapH6,
              CustomText(
                maxLines: 2,
                text: model?.productName ?? "",
                style: context.titleSmall.copyWith(color: AppColors.kBlack400, fontWeight: FontWeight.w300),
                // color: AppColors.kGrey200,
              ),
              Gap.gapH12,
              Row(
                children: [
                  CustomText(
                    text: (model?.originalPrice ?? "").toString(),
                    style: context.titleMedium.copyWith(color: AppColors.kBlack400, fontWeight: FontWeight.w600),
                    // color: AppColors.kGrey200,
                  ),
                  Gap.gapW10,
                  CustomText(
                    text: model?.discountedPrice.toString(),
                    style: context.titleMedium.copyWith(
                        color: AppColors.kGrey200,
                        fontWeight: FontWeight.w300,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: AppColors.kGrey200),
                    // color: AppColors.kGrey200,
                  ),
                ],
              ),
              Gap.gapH12,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CounterWidget(
                    onDecrement: () {},
                    onIncrement: () {},
                    quantity: model?.addedQty ?? 0,
                  ),
                  /* InkWell(
                                          onTap: () {
                                            _decrementCounter();
                                          },
                                          child: Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5), color: AppColors.kGrey300),
                                              child: Icon(
                                                Icons.remove,
                                                color: Colors.white,
                                              )
                                               IconButton(
                                                onPressed: () {

                                                },
                                                icon: Icon(
                                                  Icons.remove,
                                                  color: Colors.white,
                                                )),
                                              ),
                                        ),
                                        Gap.gapW16,
                                        Text("$_counter"),
                                        Gap.gapW16,
                                        Container(
                                          height: 28,
                                          width: 28,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5), color: AppColors.kGrey300),
                                          child: const Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                        ),*/
                  GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  title: const Text('Are you want this remove item'),
                                  content: const Text('Item remove this Cart'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () => Navigator.pop(context, "index"),
                                      child: const Text('Cancel'),
                                    ),
                                    TextButton(
                                      onPressed: () => Navigator.pop(context, "index"),
                                      child: const Text('OK'),
                                    ),
                                  ],
                                ));
                        /*  print("remove product id... ${item}");
                                              RemoveCartController.to.removeFromCart(
                                                  item.id.toString(), "languageId", "attributeId", "deviceId");*/
                      },
                      child: CustomText(
                        text: AppLabels.remove,
                        style: context.titleMedium.copyWith(
                            color: AppColors.kBlack400,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.kBlack400),
                      )),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
