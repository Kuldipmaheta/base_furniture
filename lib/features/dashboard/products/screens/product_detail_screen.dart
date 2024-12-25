import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/core/constant/app_images.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/extensions/build_context_extension.dart';
import 'package:furniture/design/utils/extensions/text_style_extension.dart';
import 'package:furniture/design/utils/gap.dart';
import 'package:furniture/design/utils/widgets/custom_svg.dart';
import 'package:get/get.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/strings.dart';
import '../../../../core/routes/app_routes.dart';
import '../../home/screens/home_screen.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  bool isExpanded = false;
  bool _visible = false;

  /* final String longText = "As a Flutter developer, crafting dynamic UIs is both fun and rewarding. "
      "This example demonstrates how you can toggle text visibility in your app. "
      "Click 'View More' to see the full content or 'View Less' to minimize.";*/
  final String text = "Accessories shown in the image are only for representation and are not part of the product "
      "Depending on your screen settings and resolution on your device there may be a  slight variance in "
      "fabric color and wood polish of the image and actual  product  Wood grains will vary from product to product. ";

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerTheme: const DividerThemeData(color: Colors.transparent)),
      child: Scaffold(
        appBar: AppBar(
          forceMaterialTransparency: true,
          // leadingWidth: 24,
          // leading: const ImageIcon(AssetImage('assets/images/back_arrow.png')),
          actions: [SvgPicture.asset("assets/icons/ic_wishlist.svg"), Gap.gapW24],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage(
                              "assets/images/chair_image.png",
                            ),
                            fit: BoxFit.cover)),
                    margin: const EdgeInsets.only(left: 24, right: 24),
                    // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    width: MediaQuery.of(context).size.width,
                    height: 382,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.productZoomScreen);
                      },
                      /*child: Image.asset(
                        // color: Colors.red,
                        'assets/images/chair_image.png',
                        fit: BoxFit.cover,
                      ),*/
                    )),
              ),
              Gap.gapH40,
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24),
                child: Row(
                  children: [
                    Expanded(
                        child: CustomText(
                      text: AppLabels.vendor,
                      maxLines: 1,
                      style: context.titleMedium.withColor(AppColors.kGrey200).copyWith(fontWeight: FontWeight.w400),
                    )
                        /* Text('Vendor Name',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(fontSize: 14, color: AppColors.kGrey200)),*/
                        ),
                    const Spacer(),
                    SvgPicture.asset('assets/icons/ic_checked.svg'),
                    Gap.gapW4,
                    CustomText(
                      text: AppLabels.inStock,
                      style: context.titleSmall.withColor(AppColors.kGreen),
                    )
                  ],
                ),
              ),
              Gap.gapH16,
              Padding(
                  padding: const EdgeInsets.only(left: 24.0, right: 24),
                  child: CustomText(
                    maxLines: 1,
                    text: AppLabels.accentChair,
                    style: context.titleMedium.withColor(AppColors.kBlack400).copyWith(fontWeight: FontWeight.w600),
                  )),
              Gap.gapH16,
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24),
                child: Row(
                  children: [
                    CustomText(
                      maxLines: 1,
                      text: "KWD 599",
                      style: context.titleMedium.withColor(AppColors.kBlack400).copyWith(fontWeight: FontWeight.w600),
                    ),
                    Gap.gapW10,
                    CustomText(
                      text: "KWD 699",
                      style: context.titleMedium.withColor(AppColors.kGrey200).copyWith(
                          fontWeight: FontWeight.w300,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: AppColors.kGrey200),
                    )
                  ],
                ),
              ),
              Gap.gapH24,
              const Divider(
                height: 4,
                color: AppColors.kGrey100,
                thickness: 2,
              ),
              Gap.gapH24,
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24),
                child: Row(
                  children: [
                    CustomText(
                      text: AppLabels.quantity,
                      style: context.titleMedium.withColor(AppColors.kBlack400).copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    const Spacer(),
                    Container(
                      height: 28,
                      width: 28,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: AppColors.kGrey300),
                      child: const Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                    Gap.gapW16,
                    const Text('1'),
                    Gap.gapW16,
                    Container(
                      height: 28,
                      width: 28,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: AppColors.kGrey300),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Gap.gapH24,
              const Divider(
                height: 4,
                color: AppColors.kGrey100,
                thickness: 2,
              ),
              Gap.gapH24,
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Product Details",
                      style: context.titleMedium.withColor(AppColors.kBlack400).copyWith(fontWeight: FontWeight.w400),
                    ),
                    Gap.gapH16,
                    CustomText(
                      text: 'Brand',
                      style: context.titleMedium.withColor(AppColors.kGrey200).copyWith(fontWeight: FontWeight.w300),
                    ),
                    CustomText(
                      text: 'Doe Buck',
                      style: context.titleMedium.withColor(AppColors.kGrey300).copyWith(fontWeight: FontWeight.w300),
                    ),
                    Visibility(
                      visible: _visible,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Gap.gapH14,
                          CustomText(
                            text: "Assembly",
                            style:
                                context.titleMedium.withColor(AppColors.kGrey200).copyWith(fontWeight: FontWeight.w300),
                          ),
                          CustomText(
                            text: 'Brand',
                            style:
                                context.titleMedium.withColor(AppColors.kGrey300).copyWith(fontWeight: FontWeight.w300),
                          ),
                          Gap.gapH14,
                          CustomText(
                            text: "Assembly",
                            style:
                                context.titleMedium.withColor(AppColors.kGrey200).copyWith(fontWeight: FontWeight.w300),
                          ),
                          CustomText(
                            text: 'Brand',
                            style:
                                context.titleMedium.withColor(AppColors.kGrey300).copyWith(fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    Gap.gapH16,
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _visible = !_visible;
                        });
                      },
                      child: CustomText(
                        text: _visible ? "View Less" : "View More",
                        style: context.titleMedium.withColor(AppColors.kPrimaryColor).copyWith(
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.kPrimaryColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              Gap.gapH24,
              const Divider(
                height: 4,
                color: AppColors.kGrey100,
                thickness: 2,
              ),
              Gap.gapH16,
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Specification',
                      style: context.titleMedium.withColor(AppColors.kBlack400).copyWith(fontWeight: FontWeight.w400),
                    ),
                    Gap.gapH16,
                    CustomText(
                      maxLines: 8,
                      text: isExpanded ? text : '${text.substring(0, 90)}...',
                      // "Accessories shown in the image are only for representation and are not part of the product  Depending on your screen settings and resolution on your device there may be a  slight variance in fabric color and wood polish of the image and actual  product  Wood grains will vary from product to product ",
                      style: context.titleMedium.withColor(AppColors.kGrey300).copyWith(fontWeight: FontWeight.w300),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Gap.gapH14,
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isExpanded = !isExpanded;
                        });
                      },
                      child: CustomText(
                        text: isExpanded ? "View Less" : "View More",
                        style: context.titleMedium.withColor(AppColors.kPrimaryColor).copyWith(
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.kPrimaryColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              Gap.gapH24,
              const Divider(
                height: 4,
                color: AppColors.kGrey100,
                thickness: 2,
              ),
              Gap.gapH24,
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24),
                child: Row(
                  children: [
                    CustomText(
                      text: "Customer Reviews",
                      style: context.titleMedium.withColor(AppColors.kBlack400).copyWith(fontWeight: FontWeight.w400),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.customerReviewScreen);
                      },
                      child: CustomText(
                        text: "See All",
                        style: context.titleMedium.withColor(AppColors.kPrimaryColor).copyWith(
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.kPrimaryColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              ListView.separated(
                separatorBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(left: 24.0, right: 24),
                    child: Divider(
                      color: AppColors.kGrey100,
                      thickness: 1,
                    ),
                  );
                },
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 24.0, right: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Gap.gapH16,
                        Row(
                          children: [
                            CircleAvatar(
                              child: Image.asset('assets/images/ellipse_img.png'),
                            ),
                            Gap.gapW12,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: 'Noura Rashidi',
                                  style: context.titleMedium
                                      .withColor(AppColors.kBlack400)
                                      .copyWith(fontWeight: FontWeight.w400),
                                ),
                                CustomText(
                                  text: '17 June, 2024',
                                  style: context.titleSmall
                                      .withColor(AppColors.kGrey200)
                                      .copyWith(fontWeight: FontWeight.w400),
                                  // color: AppColors.kGrey200,
                                ),
                              ],
                            ),
                            const Spacer(),
                            Container(
                              decoration:
                                  BoxDecoration(color: AppColors.kYellow, borderRadius: BorderRadius.circular(5)),
                              height: 19,
                              width: 40,
                              // color: Colors.red,
                              child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                const Text("4.5"),
                                Gap.gapW4,
                                const CustomSvg(
                                  imgUrl: AppIcons.icStar,
                                  width: 10,
                                  // width: 10,
                                ),
                              ]),
                            )
                          ],
                        ),
                        Gap.gapH12,
                        CustomText(
                          maxLines: 3,
                          text: "The ultimate chair for reading, napping, or just chilling. \n"
                              "I'm absolutely in love with it!",
                          style: context.titleSmall.withColor(AppColors.kGrey300).copyWith(fontWeight: FontWeight.w400),
                        ),
                        // const CustomText(text: "I'm absolutely in love with it!"),
                        Gap.gapH12,
                        CustomText(
                          text: "View More",
                          style: context.titleMedium.withColor(AppColors.kPrimaryColor).copyWith(
                              decoration: TextDecoration.underline,
                              decorationColor: AppColors.kPrimaryColor,
                              fontWeight: FontWeight.w400),
                        ),
                        Gap.gapH16,
                        /*const Divider(
                          height: 4,
                          color: AppColors.kGrey100,
                          thickness: 2,
                        ),*/
                      ],
                    ),
                  );
                },
              ),
              Gap.gapH8,
              const Divider(
                height: 4,
                color: AppColors.kGrey100,
                thickness: 2,
              ),
              Gap.gapH24,
              Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: CustomText(
                  text: "Other Vendors",
                  style: context.titleMedium.withColor(AppColors.kBlack400).copyWith(fontWeight: FontWeight.w600),
                  // color: AppColors.kBlack400,
                ),
              ),
              Gap.gapH16,
              Container(
                margin: const EdgeInsets.only(left: 24, right: 24),
                height: MediaQuery.of(context).size.height / 2.98,
                // width: MediaQuery.of(context).size.width,
                child: ListView.separated(
                    separatorBuilder: (ctx, index) {
                      return Gap.gapW20;
                    },
                    shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (ctx, index) {
                      return const SizedBox(width: 170, child: ProductInfo());
                    }),
              ),
              Gap.gapH24,
              const Divider(
                height: 4,
                color: AppColors.kGrey100,
                thickness: 2,
              ),
              Gap.gapH24,
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: CustomText(
                  text: "Related Products",
                  style: context.titleMedium.withColor(AppColors.kBlack400).copyWith(fontWeight: FontWeight.w600),

                  // color: AppColors.kBlack400,
                ),
              ),
              Gap.gapH16,
              Container(
                margin: const EdgeInsets.only(left: 24, right: 24),
                height: MediaQuery.of(context).size.height / 2.9,
                // width: MediaQuery.of(context).size.width,
                child: ListView.separated(
                    separatorBuilder: (ctx, index) {
                      return Gap.gapW20;
                    },
                    shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (ctx, index) {
                      return const SizedBox(width: 170, child: ProductInfo());
                    }),
              ),
            ],
          ),
        ),
        persistentFooterButtons: [
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24, bottom: 16),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 52,
              child: const CustomElevateBtn(),
            ),
          ),
        ],
        /*floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24, bottom: 16),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 52,
            child: CustomElevateBtn(),
          ),
        ),*/
      ),
    );
  }
}

/*class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.title,
    this.color,
    this.style,
    this.maxLines,
  });
  final String? title;
  final Color? color;
  final TextStyle? style;
  final int? maxLines;
  // final String

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: maxLines ?? 1,
      title ?? "",
      style: TextStyle(
        color: color ?? AppColors.kGrey300,
        overflow: TextOverflow.ellipsis,
        fontSize: 16,
      ),
    );
  }
}*/

class CustomElevateBtn extends StatelessWidget {
  const CustomElevateBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.kPrimaryColor,
        textStyle: CustomUiText.size16,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        foregroundColor: AppColors.kWhiteColor,
      ),
      child: const Text("Add to Cart"),
    );
  }
}
