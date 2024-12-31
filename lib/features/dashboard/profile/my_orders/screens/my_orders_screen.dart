import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/core/constant/app_images.dart';
import 'package:furniture/core/constant/strings.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/extensions/build_context_extension.dart';
import 'package:furniture/design/utils/extensions/text_style_extension.dart';
import 'package:furniture/design/utils/extensions/widget_extensions.dart';
import 'package:furniture/design/utils/gap.dart';

import '../../../../../design/utils/widgets/custom_svg.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({super.key});

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: AppBar(
        forceMaterialTransparency: true,
        titleSpacing: 0,
        // leading: CustomSvg(imgUrl: 'assets/images/back_arrow.png'),
        title: Text(
          AppLabels.myOrders,
          style: CustomUiText.semiSize16,
        ),
        actions: [
          SvgPicture.asset(AppIcons.icFilter),
          Gap.gapW8,
          Text(
            AppLabels.filter,
            style: CustomUiText.size16,
          ),
          Gap.gapW24,
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.only(top: 16, bottom: 16),
        // scrollDirection: Axis.vertical,
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(top: 20.0, bottom: 20),
            child: Divider(
              thickness: 2,
              height: 4,
              color: AppColors.kGrey100,
            ),
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: p24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/icons/orders_icon.svg'),
                    Gap.gapW10,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Ordered Placed",
                          style:
                              context.titleMedium.withColor(AppColors.kBlack400).copyWith(fontWeight: FontWeight.w400),
                        ),
                        CustomText(
                          text: "Ordered Placed",
                          style: context.titleSmall.withColor(AppColors.kGrey200).copyWith(fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomText(
                          text: "Ordered Placed",
                          style:
                              context.titleSmall.withColor(AppColors.kBlack400).copyWith(fontWeight: FontWeight.w400),
                        ),
                        CustomText(
                          text: "925457554",
                          style: context.titleSmall.withColor(AppColors.kGrey200).copyWith(fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ],
                ),
                Gap.gapH16,
                Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Gap.gapH13,
                    const Column(
                      children: [
                        Image(
                          image: AssetImage('assets/images/image2.png'),
                        ),
                      ],
                    ),
                    Gap.gapW16,
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: "Vendor Name",
                                style: context.titleSmall
                                    .withColor(AppColors.kGrey200)
                                    .copyWith(fontWeight: FontWeight.w400),
                              ),
                              const Spacer(),
                              const StarWidget(),
                            ],
                          ),
                          Gap.gapH6,
                          CustomText(
                            text: AppLabels.accentChair,
                            maxLines: 2,
                            style:
                                context.titleSmall.withColor(AppColors.kBlack400).copyWith(fontWeight: FontWeight.w300),
                          ),
                          Gap.gapH12,
                          Row(
                            children: [
                              CustomText(
                                text: "KWD 499",
                                style: context.titleMedium
                                    .withColor(AppColors.kBlack400)
                                    .copyWith(fontWeight: FontWeight.w600),
                              ),
                              Gap.gapW10,
                              CustomText(
                                text: "KWD 599",
                                style: context.titleMedium.withColor(AppColors.kGrey200).copyWith(
                                    fontWeight: FontWeight.w300,
                                    decoration: TextDecoration.lineThrough,
                                    decorationColor: AppColors.kGrey200),
                              ),

                              // Spacer(),
                            ],
                          ),
                          Gap.gapH12,
                          CustomText(
                            text: "Qty: 1",
                            style:
                                context.titleMedium.withColor(AppColors.kGrey200).copyWith(fontWeight: FontWeight.w300),
                            // color: AppColors.kGrey200,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Gap.gapH16,
                CustomText(
                  text: "Deliver on  24 June, 2024",
                  style: context.titleSmall.withColor(AppColors.kBlack400).copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

/*class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: p24,
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset('assets/icons/orders_icon.svg'),
          Gap.gapW10,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "Ordered Placed",
                style: context.titleMedium.withColor(AppColors.kBlack400).copyWith(fontWeight: FontWeight.w400),
              ),
              CustomText(
                text: "Ordered Placed",
                style: context.titleSmall.withColor(AppColors.kGrey200).copyWith(fontWeight: FontWeight.w300),
              ),
            ],
          ),
          const Spacer(),
          const Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Order Id'),
              Text('Order Id'),
            ],
          ),
        ],
      ),
    );
  }
}*/
class StarWidget extends StatelessWidget {
  const StarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.kYellow, borderRadius: BorderRadius.circular(5)),
      height: 19,
      width: 40,
      // color: Colors.red,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text("4.0"),
        Gap.gapW4,
        const CustomSvg(
          imgUrl: AppIcons.icStar,
          width: 10,
          // width: 10,
        ),
      ]),
    );
  }
}
