import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/core/constant/app_images.dart';
import 'package:furniture/core/routes/app_routes.dart';
import 'package:furniture/design/utils/custom_button.dart';
import 'package:furniture/design/utils/widgets/custom_svg.dart';
import 'package:get/get.dart';
import '../../../../core/constant/strings.dart';
import '../../../../design/favorites_screen.dart';
import '../../../../design/utils/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                      // Get.offAllNamed(AppRoutes.profileScreen);
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
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 24.0, right: 24, bottom: 20),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Column(
                            children: [ProductInfo()],
                          ),
                        ),
                        Gap.gapW20,
                        const Expanded(
                          child: Column(
                            children: [ProductInfo()],
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
  const ProductInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // String? name;
    // List products = [];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/images/image2.png',
          fit: BoxFit.cover,
          width: 200,
        ),
        Gap.gapH16,
        const CustomText(title: 'Vendor Name'),
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
    );
  }
}
