import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/core/constant/strings.dart';
import 'package:furniture/core/routes/app_routes.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/extensions/build_context_extension.dart';
import 'package:furniture/design/utils/widgets/custom_app_bar.dart';
import 'package:furniture/features/dashboard/home/controller/home_data_provider.dart';
import 'package:furniture/features/dashboard/home/widget/product_list_widget.dart';
import 'package:furniture/features/dashboard/products/controllers/product_controller.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../../core/constant/app_images.dart';
import '../../../../design/utils/gap.dart';
import '../../../../design/utils/widgets/custom_svg.dart';

class ProductListScreen extends StatefulWidget {
  final String? id;
  const ProductListScreen({super.key, this.id});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  void initState() {
    homeProvider = Provider.of<HomeDataProvider>(context, listen: false);
    homeProvider?.homeResponseData();
    print("object.. $homeProvider");
    var id = Get.arguments;
    ProductController.to.getProductList();
    print(
      "product list id::: ${id}",
    );
    super.initState();
  }

  HomeDataProvider? homeProvider;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerTheme: const DividerThemeData(color: Colors.transparent)),
      child: Scaffold(
        backgroundColor: AppColors.kWhiteColor,
        appBar: CustomAppBar(
          title: AppLabels.chair,
          // isTrailingPad: false,
          actions: [
            const CustomSvg(imgUrl: AppIcons.icSearch),
            Gap.gapW16,
            const CustomSvg(imgUrl: AppIcons.icWish),
            Gap.gapW24,
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Consumer<HomeDataProvider>(
              builder: (context, snapshot, _) {
                print(
                    'PPP count ...: ${((homeProvider?.homeResponseModel?.data?.productList?.length ?? 0) / 2).round()}');
                return snapshot.homeResponseModel == null
                    ? const CircularProgressIndicator()
                    : ListView.builder(
                        padding: const EdgeInsets.only(top: 16, left: 24.0, right: 24),
                        physics: const NeverScrollableScrollPhysics(),
                        // scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: ((homeProvider?.homeResponseModel?.data?.productList?.length ?? 0) / 2).round(),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      ProductListWidget(
                                        model: homeProvider!.homeResponseModel!.data!.productList![index * 2],
                                        index: index * 2,
                                      )
                                    ],
                                  ),
                                ),
                                Gap.gapW20,
                                Expanded(
                                  child: Column(
                                    children: [
                                      ProductListWidget(
                                        model: homeProvider!.homeResponseModel!.data!.productList![index * 2 + 1],
                                        index: index * 2 + 1,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
              },
            ),
          ),
        ),
        persistentFooterButtons: [
          Container(
            margin: const EdgeInsets.only(top: 12, bottom: 12),
            // color: Colors.red,
            // height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            margin: const EdgeInsets.only(left: 24, right: 24),
                            // height: 100,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Center(
                                  child: Container(
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
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 44.0),
                                  child: CustomText(
                                    text: "Sort By",
                                    style: context.titleMedium
                                        .copyWith(color: AppColors.kBlack400, fontWeight: FontWeight.w600),
                                  ),
                                  /*Text(
                                    'Sort By',
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                  ),*/
                                ),
                                Gap.gapH28,
                                CustomText(
                                  text: AppLabels.priceLtoH,
                                  style: context.titleMedium
                                      .copyWith(color: AppColors.kPrimaryColor, fontWeight: FontWeight.w300),
                                ),
                                Gap.gapH28,
                                CustomText(
                                  text: AppLabels.priceHtoL,
                                  style: context.titleMedium
                                      .copyWith(color: AppColors.kBlack400, fontWeight: FontWeight.w300),
                                ),
                                Gap.gapH28,
                                CustomText(
                                  text: AppLabels.ratingLtoH,
                                  style: context.titleMedium
                                      .copyWith(color: AppColors.kBlack400, fontWeight: FontWeight.w300),
                                ),
                                Gap.gapH28,
                                CustomText(
                                  text: AppLabels.ratingHtoL,
                                  style: context.titleMedium
                                      .copyWith(color: AppColors.kBlack400, fontWeight: FontWeight.w300),
                                ),
                                Gap.gapH36
                              ],
                            ),
                          );
                        });
                  },
                  child: Wrap(children: [
                    Gap.gapW63,
                    const CustomSvg(imgUrl: AppIcons.icSortBy),
                    Gap.gapW6,
                    CustomText(
                      text: AppLabels.sortBy,
                      style: context.titleMedium.copyWith(color: AppColors.kBlack400, fontWeight: FontWeight.w300),
                    ),
                  ]),
                ),
                // Gap.gapW63,
                const VerticalDivider(
                  color: AppColors.kGrey100,
                  thickness: 2,
                ),
                // Gap.gapW63,
                GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.filterScreen);
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FilterScreen()));
                  },
                  child: Wrap(
                    children: [
                      const CustomSvg(imgUrl: AppIcons.icFilter),
                      Gap.gapW6,
                      CustomText(
                        text: AppLabels.filterBy,
                        style: context.titleMedium.copyWith(color: AppColors.kBlack400, fontWeight: FontWeight.w300),
                      ),
                      Gap.gapW63,
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
