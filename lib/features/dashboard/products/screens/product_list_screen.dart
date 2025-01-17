import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/core/constant/strings.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/widgets/custom_app_bar.dart';
import 'package:furniture/features/dashboard/home/controller/home_data_provider.dart';
import 'package:furniture/features/dashboard/home/widget/product_list_widget.dart';
import 'package:furniture/features/dashboard/products/filter/filter_screen.dart';
import 'package:provider/provider.dart';

import '../../../../core/constant/app_images.dart';
import '../../../../design/utils/gap.dart';
import '../../../../design/utils/widgets/custom_svg.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  void initState() {
    homeProvider = Provider.of<HomeDataProvider>(context, listen: false);
    homeProvider?.homeResponseData();
    print("object.. $homeProvider");
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
        /* AppBar(
            forceMaterialTransparency: true,
            titleSpacing: 0,
            title: Text(
              AppLabels.chair,
              style: CustomUiText.semiSize18,
            ),
            actions: [
              const CustomSvg(imgUrl: AppIcons.icSearch),
              Gap.gapW16,
              const CustomSvg(imgUrl: AppIcons.icWish),
              Gap.gapW24,
            ]),*/
        body: SafeArea(
          child: SingleChildScrollView(
            child: Consumer<HomeDataProvider>(
              builder: (context, snapshot, _) {
                print(
                    'PPPP count ...: ${((homeProvider?.homeResponseModel?.data?.productList?.length ?? 0) / 2).round()}');
                return snapshot.homeResponseModel == null
                    ? const CircularProgressIndicator()
                    : ListView.builder(
                        padding: EdgeInsets.only(top: 16, left: 24.0, right: 24),
                        physics: const NeverScrollableScrollPhysics(),
                        // scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: ((homeProvider?.homeResponseModel?.data?.productList?.length ?? 0) / 2).round(),
                        itemBuilder: (context, index) {
                          return Row(
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
              mainAxisAlignment: MainAxisAlignment.center,
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
                                const Padding(
                                  padding: EdgeInsets.only(top: 44.0),
                                  child: Text(
                                    'Sort By',
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Gap.gapH28,
                                Text(
                                  AppLabels.priceLtoH,
                                  style: CustomUiText.size16,
                                ),
                                Gap.gapH28,
                                Text(AppLabels.priceHtoL, style: CustomUiText.size16),
                                Gap.gapH28,
                                Text(AppLabels.ratingLtoH, style: CustomUiText.size16),
                                Gap.gapH28,
                                Text(AppLabels.ratingHtoL, style: CustomUiText.size16),
                                Gap.gapH36
                              ],
                            ),
                          );
                        });
                  },
                  child: Wrap(children: [
                    const CustomSvg(imgUrl: AppIcons.icSortBy),
                    Gap.gapW6,
                    Text(AppLabels.sortBy, style: CustomUiText.size16),
                  ]),
                ),
                Gap.gapW63,
                const VerticalDivider(
                  width: 2,
                  color: Colors.grey,
                  thickness: 2,
                ),
                Gap.gapW63,
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FilterScreen()));
                  },
                  child: Wrap(
                    children: [
                      const CustomSvg(imgUrl: AppIcons.icFilter),
                      Gap.gapW6,
                      Text(
                        AppLabels.filterBy,
                        style: CustomUiText.size16,
                      )
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
