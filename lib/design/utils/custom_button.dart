import 'dart:async';

import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/extensions/build_context_extension.dart';
import 'package:furniture/design/utils/extensions/text_style_extension.dart';
import 'package:furniture/design/utils/gap.dart';
import 'package:furniture/features/dashboard/category/controllers/category_data_provider.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

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
      padding: const EdgeInsets.only(left: 24),
      width: MediaQuery.of(context).size.width,
      height: 52,
      child: ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  // width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3.5,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top: 16,
                        ),
                        height: 4,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                      ),
                      Gap.gapH24,
                      CustomText(
                        text: "Logout",
                        style: context.titleMedium
                            .copyWith(fontSize: 18, color: AppColors.kBlack400, fontWeight: FontWeight.w700),
                      ),
                      Gap.gapH10,
                      CustomText(
                        text: "Are you sure you want to logout?",
                        style: context.titleSmall.copyWith(color: AppColors.kGrey300, fontWeight: FontWeight.w300),
                      ),
                      Gap.gapH40,
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(child: CustomButton(onPress: () {}, text: "Cancel")),
                          Gap.gapW20,
                          Expanded(
                              child: CustomDarkButton(
                            onpress: () {},
                            text: "Yes, Logout",
                          )),
                        ],
                      )
                    ],
                  ),
                );
              });
        },
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
  String text;
  CustomDarkButton({super.key, required this.onpress, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 24),
      width: MediaQuery.of(context).size.width,
      height: 52,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          textStyle: CustomUiText.size16,
          backgroundColor: ColorsSources.primaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          foregroundColor: Colors.white,
        ),
        child: Text(text),
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

class CustomProducts extends StatefulWidget {
  const CustomProducts({super.key});

  @override
  State<CustomProducts> createState() => _CustomProductsState();
}

class _CustomProductsState extends State<CustomProducts> {
  late CategoryDataProvider provider;
  @override
  void initState() {
    provider = Provider.of<CategoryDataProvider>(context, listen: false);
    provider.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24),
      height: 100,
      child: Consumer<CategoryDataProvider>(
        builder: (context, snapshot, _) {
          return snapshot.categoryModel == null
              ? const Center(child: CircularProgressIndicator())
              : ListView.separated(
                  separatorBuilder: (context, index) {
                    return Gap.gapW20;
                  },
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: provider.categoryModel?.data?.categoryList?.length ?? 0,
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
                            child: Image.network(
                              provider.categoryModel!.data!.categoryList!.elementAt(index).categoryImage.toString(),
                              height: 30,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Gap.gapH8,
                        CustomText(
                          text: provider.categoryModel!.data!.categoryList!.elementAt(index).categoryName.toString(),
                          style: context.titleSmall.withColor(AppColors.kGrey200).copyWith(fontWeight: FontWeight.w400),
                        ),
                      ],
                    );
                  },
                );
        },
      ),
    );
  }
}

class CustomMobileTextField extends StatelessWidget {
  const CustomMobileTextField({super.key, this.controller});
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: 48,
            width: 85,
            decoration: BoxDecoration(
                color: AppColors.kGrey100,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AppColors.kGrey200.withOpacity(0.50),
                )),
            child: Center(
              child: CustomText(
                text: "+965",
                style: context.titleMedium.withColor(AppColors.kBlack400).copyWith(fontWeight: FontWeight.w300),
              ),
            )),
        Gap.gapW8,
        Expanded(
            child: SizedBox(
          // color: AppColors.kGrey100,
          // margin: const EdgeInsets.only(left: 24, right: 24),
          // height: 44,
          width: MediaQuery.of(context).size.width,
          child: TextField(
            controller: controller,
            cursorColor: AppColors.kPrimaryColor,
            enabled: true,
            keyboardType: TextInputType.number,
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              fillColor: AppColors.kGrey100,
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: AppColors.kGrey200)),
              contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
              // border: OutlineInputBorder(
              //     borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: AppColors.kGrey200)),
              hintText: 'Enter Mobile Number',
              hintStyle: const TextStyle(color: AppColors.kGrey200),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: AppColors.kGrey200)),
            ),
            onChanged: (value) {},
          ),
        )),
        // Expanded(child: CustomMobileTextField()),
      ],
    );

    /*SizedBox(
      // color: AppColors.kGrey100,
      // margin: const EdgeInsets.only(left: 24, right: 24),
      // height: 44,
      width: MediaQuery.of(context).size.width,
      child: TextField(
        cursorColor: AppColors.kPrimaryColor,
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
    );*/
  }
}
