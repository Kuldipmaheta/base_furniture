import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/core/constant/app_images.dart';
import 'package:furniture/core/constant/strings.dart';
import 'package:furniture/core/routes/app_routes.dart';
import 'package:furniture/design/utils/custom_button.dart';
import 'package:furniture/design/utils/gap.dart';
import 'package:furniture/design/utils/widgets/custom_svg.dart';
import 'package:furniture/features/favourites/screens/favorites_screen.dart';
import 'package:furniture/practice/model.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final totalDots = 3;
  int currentPosition = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kWhiteColor,
        forceMaterialTransparency: true,
        // surfaceTintColor: Colors.transparent,
        actions: [
          const CustomSvg(imgUrl: AppIcons.icSearch),
          // SvgPicture.asset(AppIcons.icSearch),
          Gap.gapW16,
          GestureDetector(
            onTap: () {
              Get.toNamed(AppRoutes.favoriteScreen);
            },
            // onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const FavoritesScreen())),
            child: const CustomSvg(imgUrl: AppIcons.icWish),
          ),
          Gap.gapW16,
          SvgPicture.asset(
            AppIcons.icNotification,
          ),
          Gap.gapW24
          // Icon(Icons.notifications_none),
        ],
        titleSpacing: 0,
        title: const Padding(
          padding: EdgeInsets.only(left: 24.0),
          child: Text(
            'Athathi',
            style: TextStyle(color: AppColors.kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        // physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 24.0, right: 24),
              child: CustomSlider(),
            ),
            Center(
              child: DotsIndicator(
                decorator: const DotsDecorator(color: AppColors.kGrey100, activeColor: AppColors.kPrimaryColor),
                dotsCount: totalDots,
                position: currentPosition,
              ),
            ),
            Gap.gapH16,
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24),
              child: Row(
                children: [
                  const Text(
                    AppLabels.getCategories,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      // Get.offAllNamed(AppRoutes.categoryScreen);
                    },
                    child: const Text(
                      AppLabels.getViewAll,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.kPrimaryColor,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.kPrimaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Gap.gapH24,
            const CustomProducts(),
            Gap.gapH16,
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24),
              child: Row(
                children: [
                  const Text(
                    'Popular Furniture',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'View All',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.kPrimaryColor,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.kPrimaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Gap.gapH16,
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: popularFurnitureList.length,
                itemBuilder: (context, index) {
                  // Furniture item = popularFurnitureList[index];
                  return const Padding(
                    padding: EdgeInsets.only(
                      bottom: 20,
                    ),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 24.0, right: 10),
                            child: ProductInfo(),
                          ),
                        ),
                        // Gap.gapW20,
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.0, right: 24),
                            child: ProductInfo(),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}

class ProductInfo extends StatelessWidget {
  // final Furniture item;
  const ProductInfo({
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
