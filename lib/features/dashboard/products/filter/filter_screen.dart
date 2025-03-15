import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/core/constant/strings.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/extensions/build_context_extension.dart';
import 'package:furniture/design/utils/extensions/widget_extensions.dart';
import 'package:furniture/design/utils/gap.dart';
import 'package:furniture/design/utils/widgets/custom_app_bar.dart';
import 'package:furniture/features/dashboard/products/filter/category_check_screen.dart';
import 'package:get/get.dart';

import 'discount_check_screen.dart';
import 'price_range_screen.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  List filterName = [
    'Price Range',
    'Category',
    'Discount',
    'Vendor',
  ];
  List<Widget> list = <Widget>[
    const PriceRangeScreen(),
    const CategoryCheckScreen(),
    const DiscountCheckScreen(),
    const CategoryCheckScreen(),
  ];
  int current = 0;

  double startValue = 0.0;
  double endValue = 30.0;
  int selectedIndex = 0;
  // bool selected = false;
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Theme(
      //bottom line disable
      data: Theme.of(context).copyWith(
          dividerTheme: const DividerThemeData(
        color: Colors.transparent,
      )),
      child: Scaffold(
        backgroundColor: AppColors.kWhiteColor,
        appBar: CustomAppBar(
          backWidget: gap0,
          isTrailingPad: false,
          bottom: const PreferredSize(
              preferredSize: Size.fromHeight(1),
              child: Divider(
                color: AppColors.kGrey100,
                thickness: 1,
                // color: Colors.black,
                height: 1,
              )),
          title: AppLabels.filter,
          // isTrailingPad: false,
          actions: [
            CustomText(
              text: AppLabels.reset,
              style: context.titleMedium.copyWith(
                  color: AppColors.kPrimaryColor,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.kPrimaryColor),
            ),
            /*Text(
              AppLabels.reset,
              style: TextStyle(
                  fontSize: 16,
                  color: AppColors.kPrimaryColor,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.kPrimaryColor),
            ),*/
            Gap.gapW24,
          ],
        ),
        /*AppBar(
          titleSpacing: 0,
          forceMaterialTransparency: true,
          backgroundColor: AppColors.kWhiteColor,
          bottom: const PreferredSize(
              preferredSize: Size.fromHeight(1),
              child: Divider(
                color: AppColors.kGrey100,
                thickness: 1,
                // color: Colors.black,
                height: 1,
              )),
          // appbar bottom line
          title: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Text(
              AppLabels.filter,
              style: CustomUiText.semiSize16,
            ),
          ),
          actions: [
            const Text(
              AppLabels.reset,
              style: TextStyle(
                  fontSize: 16,
                  color: AppColors.kPrimaryColor,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.kPrimaryColor),
            ),
            Gap.gapW24,
          ],
        ),*/
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Expanded(
                    child: Container(
                      // margin: EdgeInsets.only(left: 24),
                      color: AppColors.kGrey100,
                      width: MediaQuery.of(context).size.width / 3,
                      // height: MediaQuery.of(context).size.height,
                      child: ListView.builder(
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemCount: filterName.length,
                        itemBuilder: (context, index) {
                          return Container(
                            color: index == selectedIndex ? AppColors.kWhiteColor : AppColors.kGrey100,
                            child: ListTile(
                              // content default padding zero bz no leading item
                              contentPadding: EdgeInsets.zero,
                              // tileColor: index == 3 ? Colors.blue : Colors.red,
                              selected: index == selectedIndex,
                              selectedColor: AppColors.kPrimaryColor,
                              textColor: AppColors.kBlack400,
                              onTap: () {
                                setState(() {
                                  debugPrint('price.. $selectedIndex');
                                  selectedIndex = index;
                                  controller.jumpToPage(index);
                                });
                              },
                              title: Padding(
                                padding: EdgeInsets.only(left: 24.0),
                                child: Text(
                                  filterName[index],
                                  // AppLabels.priceRange
                                  // + index.toString(),
                                  // selectionColor: Colors.white,
                                ),
                              ),
                              // subtitle: Text('data'),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              /*Expanded(
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24.0, top: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('KWD 0-KWD 2000'),
                        Container(
                          // color: Colors.red,
                          child: RangeSlider(
                              activeColor: AppColors.kPrimaryColor,
                              min: 0,
                              max: 50,
                              values: RangeValues(startValue, endValue),
                              onChanged: (values) {
                                setState(() {
                                  startValue = values.start;
                                  endValue = values.end;
                                });
                              }),
                        )
                      ],
                    ),
                  ),
                ),
              ),*/
              Expanded(
                  child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                // reverse: true,
                controller: controller,
                children: list,
                onPageChanged: (index) {
                  debugPrint("object $index");
                  current = index;
                  setState(() {
                    selectedIndex = index;
                    controller.jumpToPage(index);
                  });
                },
              )),
            ],
          ),
        ),
        persistentFooterButtons: [
          Container(padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8, right: 16), child: CustomButton())
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
            child: SizedBox(
                height: 52,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.kWhiteColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: const BorderSide(color: AppColors.kPrimaryColor)),
                        foregroundColor: AppColors.kPrimaryColor),
                    onPressed: () {
                      Get.back(canPop: true);
                    },
                    child: Text(
                      'Close',
                      style: CustomUiText.size16,
                    )))),
        Gap.gapW20,
        Expanded(
            child: SizedBox(
          height: 52,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.kPrimaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), side: const BorderSide(color: AppColors.kPrimaryColor)),
                  foregroundColor: AppColors.kWhiteColor),
              onPressed: () {
                // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const GoogleMapLauncher()));
              },
              child: Text(
                'Apply',
                style: CustomUiText.size16,
              )),
        ))
      ],
    );
  }
}
