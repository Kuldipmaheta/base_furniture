import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/core/constant/app_images.dart';
import 'package:furniture/design/utils/custom_button.dart';

import '../design/favorites_screen.dart';
import '../design/utils/gap.dart';

class ProductListingLvBuilder extends StatefulWidget {
  const ProductListingLvBuilder({super.key});

  @override
  State<ProductListingLvBuilder> createState() =>
      _ProductListingLvBuilderState();
}

class _ProductListingLvBuilderState extends State<ProductListingLvBuilder> {
  List products = [];
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        // surfaceTintColor: Colors.transparent,
        actions: [
          SvgPicture.asset(AppIcons.icSearch),
          Gap.gapW16,
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                     const FavoritesScreen())),
              child: SvgPicture.asset(
            AppIcons.icWish,
          )),
          Gap.gapW16,
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: SvgPicture.asset('assets/images/ic_wishlist.svg'),
          ),

          // Icon(Icons.notifications_none),
        ],
        title: const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Text(
            'Athathi',
            style: TextStyle(
                color: AppColors.kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        // physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomSlider(),
            Gap.gapH6,
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24.0, top: 16),
                  child: Text(
                    'Categories',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 24.0, top: 16),
                  child: Text(
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
            Gap.gapH24,
            const CustomProducts(),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24.0, top: 16),
                  child: Text(
                    'Popular Furniture',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 24.0, top: 16),
                  child: Text(
                    'View All',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF95622D),
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xFF95622D),
                    ),
                  ),
                ),
              ],
            ),
            Gap.gapH16,
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 20, right: 10),
                          child: const Column(
                            children: [ProductInfo()],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 10, right: 20),
                          child: const Column(
                            children: [ProductInfo()],
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // selectedItemColor: Color(0xff262A2B),
          backgroundColor: const Color(0xff262A2B),
          onTap: (index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          currentIndex: currentPageIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          // backgroundColor: Colors.blue,
          // elevation: 0,
          iconSize: 24,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppIcons.icHome,
                ),
                label: 'Home',
                backgroundColor: const Color(0xff262A2B)
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.icCategory),
              label: "Category",
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(AppIcons.icCart),
                label: 'Cart'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(AppIcons.icProfile),
                label: 'Profile'),
          ]),
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
        const Padding(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Row(
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
        ),
      ],
    );
  }
}
