import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/gap.dart';
import 'package:get/get.dart';

import '../../core/constant/app_images.dart';
import '../../core/routes/app_routes.dart';
import 'colors_sources.dart';
import 'extensions/widget_extensions.dart';

@immutable
class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.onPress,
    required this.text,
  });
  VoidCallback? onPress;
  String text;
  // Color hexColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 24, left: 24),
      width: 382,
      height: 52,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          textStyle: CustomUiText.size16,
          shape: RoundedRectangleBorder(
              side: BorderSide(color: ColorsSources.primaryColor), borderRadius: BorderRadius.circular(10)),
          foregroundColor: ColorsSources.primaryColor,
        ),
        child: Text(text),
      ),
    );
  }
}

@immutable
class CustomDarkButton extends StatelessWidget {
  VoidCallback? onpress;
  CustomDarkButton({super.key, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 24),
      width: 382,
      height: 52,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          textStyle: CustomUiText.size16,
          backgroundColor: ColorsSources.primaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          foregroundColor: Colors.white,
        ),
        child: const Text("Continue"),
      ),
    );
  }
}

class BannerListing extends StatelessWidget {
  final ValueChanged<int>? onPageChanged;
  BannerListing({super.key, this.onPageChanged});

  final List<String> imagePath = [
    "assets/images/car_img.png",
    "assets/images/car_img.png",
    "assets/images/car_img.png"
  ];
  List<Widget>? pages;
  int activePage = 0;
  Timer? timer;
  final PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: p24,
        child: SizedBox(
          height: 158,
          width: MediaQuery.of(context).size.width,
          child: PageView.builder(
              controller: pageController,
              itemCount: imagePath.length,
              onPageChanged: onPageChanged,
              itemBuilder: (context, index) {
                return pages?[index];
              }),
        ));
  }
}

class CustomProducts extends StatelessWidget {
  const CustomProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24),
      height: 100,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return Gap.gapW20;
        },
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.productListScreen);
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColors.kGrey100),
                  child: SvgPicture.asset(
                    AppIcons.icChair,
                    height: 30,
                    // width: 30,
                  ),
                ),
              ),
              Gap.gapH8,
              const Text('Chair'),
            ],
          );
        },
      ),
    );
  }
}

class CustomMobileTextField extends StatelessWidget {
  const CustomMobileTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: AppColors.kGrey100,
      // margin: const EdgeInsets.only(left: 24, right: 24),
      // height: 44,
      width: MediaQuery.of(context).size.width,
      child: TextField(
        cursorColor: AppColors.kBlack400,
        enabled: true,
        keyboardType: TextInputType.number,
        textAlignVertical: TextAlignVertical.bottom,
        decoration: InputDecoration(
          fillColor: AppColors.kGrey100,
          filled: true,
          contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: 'Enter Mobile Number',
          hintStyle: const TextStyle(color: Colors.grey),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Colors.grey)),
        ),
        onChanged: (value) {},
      ),
    );
  }
}
