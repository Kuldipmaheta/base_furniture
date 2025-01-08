import 'dart:async';

import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/core/constant/app_images.dart';
import 'package:furniture/core/constant/strings.dart';
import 'package:furniture/core/routes/app_routes.dart';
import 'package:furniture/design/utils/custom_button.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/extensions/build_context_extension.dart';
import 'package:furniture/design/utils/extensions/text_style_extension.dart';
import 'package:furniture/design/utils/extensions/widget_extensions.dart';
import 'package:furniture/design/utils/gap.dart';
import 'package:furniture/design/utils/widgets/custom_svg.dart';
import 'package:furniture/features/dashboard/home/controller/home_data_provider.dart';
import 'package:furniture/features/dashboard/home/widget/product_list_widget.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (pageController.page == imagePath.length - 1) {
        pageController.animateToPage(0, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
      } else {
        pageController.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
      }
    });
  }

  // CategoryDataProvider? provider;
  HomeDataProvider? homeProvider;

  @override
  void initState() {
    pages = List.generate(
        imagePath.length,
        (index) => ImagePlace(
              imagePath: imagePath[index],
            ));
    super.initState();
    startTimer();
    // provider = Provider.of<CategoryDataProvider>(context, listen: false);
    // provider?.getData();

    homeProvider = Provider.of<HomeDataProvider>(context, listen: false);
    homeProvider?.homeResponseData();
  }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }

  final List<String> imagePath = [
    "assets/images/banner_img1.jpg",
    "assets/images/banner.png",
    "assets/images/banner_img1.jpg",
  ];
  List<Widget>? pages;
  int activePage = 0;
  Timer? timer;
  final PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.kWhiteColor,
        scrolledUnderElevation: 0,
        // forceMaterialTransparency: true,
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
          const CustomSvg(imgUrl: AppIcons.icNotification),
          Gap.gapW24
          // Icon(Icons.notifications_none),
        ],
        titleSpacing: 0,
        title: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: CustomText(
              text: AppLabels.appName,
              style: context.titleLarge.withColor(AppColors.kPrimaryColor).copyWith(fontWeight: FontWeight.w600),
            )),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          // physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap.gapH16,
              Padding(
                  padding: p24,
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
                    height: 158,
                    width: MediaQuery.of(context).size.width,
                    child: PageView.builder(
                        clipBehavior: Clip.antiAlias,
                        controller: pageController,
                        itemCount: imagePath.length,
                        onPageChanged: (value) {
                          setState(() {
                            activePage = value;
                          });
                        },
                        itemBuilder: (context, index) {
                          return pages?[index];
                        }),
                  )),
              Gap.gapH14,
              Container(
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      pages?.length ?? 0,
                      (index) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 3.0),
                            child: GestureDetector(
                              onTap: () {
                                pageController.animateToPage(index,
                                    duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
                              },
                              child: CircleAvatar(
                                backgroundColor: activePage == index ? AppColors.kPrimaryColor : AppColors.kGrey100,
                                radius: 4,
                              ),
                            ),
                          )),
                ),
              ),
              Gap.gapH16,
              Padding(
                padding: p24,
                child: Row(
                  children: [
                    CustomText(
                      text: AppLabels.getCategories,
                      style: context.titleMedium.withColor(AppColors.kBlack400).copyWith(fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.productListScreen);
                      },
                      child: CustomText(
                        text: AppLabels.getViewAll,
                        style: context.titleMedium.withColor(AppColors.kPrimaryColor).copyWith(
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.kPrimaryColor),
                      ),
                    ),
                  ],
                ),
              ),
              Gap.gapH16,
              const CustomProducts(),
              Gap.gapH16,
              Padding(
                padding: p24,
                child: Row(
                  children: [
                    CustomText(
                      text: AppLabels.popularFurn,
                      style: context.titleMedium.withColor(AppColors.kBlack400).copyWith(fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.productListScreen);
                        },
                        child: CustomText(
                            text: AppLabels.getViewAll,
                            style: context.titleMedium.withColor(AppColors.kPrimaryColor).copyWith(
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColors.kPrimaryColor,
                                )),
                      ),
                    ),
                  ],
                ),
              ),
              Gap.gapH16,
              Consumer<HomeDataProvider>(
                builder: (context, snapshot, _) {
                  return snapshot.homeResponseModel == null
                      ? const CircularProgressIndicator()
                      : ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: ((homeProvider?.homeResponseModel?.data?.productList?.length ?? 0) / 2).round(),
                          // itemCount: (homeProvider!.homeResponseModel!.data!.productList!.length / 2).round(),

                          // homeProvider!.homeResponseModel!.data?.productList?.length ?? 0,
                          itemBuilder: (context, index) {
                            // ProductList item = homeProvider!.homeResponseModel!.data!.productList![index * 2];
                            return Padding(
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
                                      child: Column(
                                        children: [
                                          // Text("index ${{index * 2}.toString()}"),
                                          ProductListWidget(
                                            model: homeProvider!.homeResponseModel!.data!.productList![index * 2],
                                            index: index * 2,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  // Gap.gapW20,
                                  // ((homeProvider!.homeResponseModel!.data!.productList!.length / 2).round() + 1 >
                                  //         (index * 2 + 1))
                                  //     ?
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10.0, right: 24),
                                      child: Column(
                                        children: [
                                          // Text("index${{index * 2 + 1}.toString()}"),
                                          ProductListWidget(
                                            model: homeProvider!.homeResponseModel!.data!.productList![index * 2 + 1],
                                            index: index * 2 + 1,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                  // : Expanded(
                                  //     child: SizedBox(),
                                  //   )
                                ],
                              ),
                            );
                          });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImagePlace extends StatelessWidget {
  final String? imagePath;
  const ImagePlace({super.key, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(image: AssetImage(imagePath!), fit: BoxFit.cover)),
      /* child: Image.asset(
        imagePath!,
        fit: BoxFit.cover,
        // radius: BorderRadius.circular(16),
      ),*/
    );
  }
}
