import 'package:furniture/core/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/gap.dart';
import '../../../../core/constant/app_colors.dart';
import '../../home/screens/home_screen.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
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
              Container(
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
                  height: 300,
                  child: GestureDetector(
                    onTap: () {
                      // Get.toNamed(AppRoutes.productZoomScreen);
                    },
                    /*child: Image.asset(
                      // color: Colors.red,
                      'assets/images/chair_image.png',
                      fit: BoxFit.cover,
                    ),*/
                  )),
              Gap.gapH40,
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24),
                child: Row(
                  children: [
                    const Expanded(
                      child: Text('Vendor Name',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(fontSize: 14, color: AppColors.kGrey200)),
                    ),
                    const Spacer(),
                    SvgPicture.asset('assets/icons/ic_checked.svg'),
                    Gap.gapW4,
                    const Text(
                      'In stock',
                      style: TextStyle(color: AppColors.kGreen),
                    ),
                  ],
                ),
              ),
              Gap.gapH16,
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24),
                child: Text(
                  'Pashe Fabric Accent Chair',
                  style: CustomUiText.semiSize16,
                ),
              ),
              Gap.gapH16,
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24),
                child: Row(
                  children: [
                    Text(
                      'KWD 599',
                      style: CustomUiText.semiSize16,
                    ),
                    Gap.gapW10,
                    const Text(
                      'KWD 699',
                      style: TextStyle(
                          fontSize: 16,
                          color: AppColors.kGrey200,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: AppColors.kGrey200),
                    ),
                  ],
                ),
              ),
              Gap.gapH24,
              const Divider(
                color: AppColors.kGrey100,
                thickness: 2,
              ),
              Gap.gapH24,
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24),
                child: Row(
                  children: [
                    Text(
                      'Quantity',
                      style: CustomUiText.size16,
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
                color: AppColors.kGrey100,
                thickness: 2,
              ),
              Gap.gapH24,
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      title: "Product Details",
                    ),
                    Gap.gapH16,
                    const CustomText(title: 'Brand', color: AppColors.kGrey200),
                    const CustomText(
                      title: 'Doe Buck',
                    ),
                    Gap.gapH14,
                    const CustomText(
                      title: "Assembly",
                    ),
                    const CustomText(title: 'Brand', color: AppColors.kGrey200),
                    Gap.gapH14,
                    const CustomText(
                      title: "Assembly",
                    ),
                    const CustomText(title: 'Brand', color: AppColors.kGrey200),
                    Gap.gapH16,
                    const CustomText(
                      title: "View Less",
                      color: AppColors.kPrimaryColor,
                    ),
                  ],
                ),
              ),
              Gap.gapH24,
              const Divider(
                color: AppColors.kGrey100,
                thickness: 2,
              ),
              Gap.gapH16,
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(title: 'Specification'),
                    Gap.gapH16,
                    const CustomText(
                      maxLines: 5,
                      title:
                          "Accessories shown in the image are only for representation and are not part of the product  Depending on your screen settings and resolution on your device there may be a  slight variance in fabric color and wood polish of the image and actual  product  Wood grains will vary from product to product ",
                    ),
                    Gap.gapH14,
                    const CustomText(
                      title: "View More",
                      color: AppColors.kPrimaryColor,
                    ),
                  ],
                ),
              ),
              Gap.gapH24,
              const Divider(
                color: AppColors.kGrey100,
                thickness: 2,
              ),
              Gap.gapH24,
              ListView.builder(
                /*separatorBuilder: (context, index) {
                  return Divider(
                    color: AppColors.kGrey100,
                    thickness: 3,
                  );
                },*/
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 24.0, right: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            CustomText(
                              title: "Customer Reviews",
                            ),
                            Spacer(),
                            Text("Sea All")
                          ],
                        ),
                        Gap.gapH16,
                        Row(
                          children: [
                            CircleAvatar(
                              child: Image.asset('assets/images/ellipse_img.png'),
                            ),
                            Gap.gapW12,
                            const Column(
                              children: [
                                CustomText(title: 'Noura Rashidi'),
                                CustomText(
                                  title: '17 June, 2024',
                                  color: AppColors.kGrey200,
                                ),
                              ],
                            )
                          ],
                        ),
                        Gap.gapH12,
                        const CustomText(title: "The ultimate chair for reading, napping, or just chilling. "),
                        const CustomText(title: "I'm absolutely in love with it!"),
                        Gap.gapH12,
                        const CustomText(
                          title: "View More",
                          color: AppColors.kPrimaryColor,
                        ),
                        Gap.gapH16,
                        const Divider(
                          color: AppColors.kGrey100,
                          thickness: 2,
                        ),
                      ],
                    ),
                  );
                },
              ),
              Gap.gapH24,
              const Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: CustomText(
                  title: "Other Vendors",
                  color: AppColors.kBlack400,
                ),
              ),
              Gap.gapH16,
              Container(
                margin: const EdgeInsets.only(left: 24, right: 24),
                height: MediaQuery.of(context).size.height / 3,
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
                      return Container(width: 170, child: const ProductInfo());
                    }),
              ),
              Gap.gapH24,
              const Divider(
                color: AppColors.kGrey100,
                thickness: 2,
              ),
              Gap.gapH24,
              const Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: CustomText(
                  title: "Related Products",
                  color: AppColors.kBlack400,
                ),
              ),
              Gap.gapH16,
              Container(
                margin: const EdgeInsets.only(left: 24, right: 24),
                height: MediaQuery.of(context).size.height / 3,
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
                      return Container(width: 170, child: const ProductInfo());
                    }),
              ),
            ],
          ),
        ),
        persistentFooterButtons: [
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24, top: 24, bottom: 16),
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

class CustomText extends StatelessWidget {
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
}

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
