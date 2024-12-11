import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/core/constant/strings.dart';

import 'package:furniture/design/utils/custom_text.dart';

import '../../../../design/utils/gap.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  List<Widget> list = <Widget>[
    // Center(child: FavoritesScreen()),
    // Center(child: ProductListScreen()),
    // Center(child: MyOrdersScreen()),
    Center(child: Text('Page 1')),
    Center(child: Text('Page 2')),
    Center(child: Text('Page 3')),
    Center(child: Text('Page 4')),
  ];
  int current = 0;

  double startValue = 0.0;
  double endValue = 30.0;
  int selectedIndex = 0;
  // bool selected = false;
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: AppBar(
        title: Text(
          AppLabels.filter,
          style: CustomUiText.semiSize16,
        ),
        actions: [
          Text(AppLabels.reset),
          Gap.gapW24,
        ],
      ),
      body: Row(
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
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        color: index == selectedIndex ? AppColors.kWhiteColor : AppColors.kGrey100,
                        child: ListTile(
                          // tileColor: index == 3 ? Colors.blue : Colors.red,
                          selected: index == selectedIndex,
                          selectedColor: AppColors.kPrimaryColor,
                          textColor: AppColors.kBlack400,
                          onTap: () {
                            setState(() {
                              print('price.. $selectedIndex');
                              selectedIndex = index;
                              controller.jumpToPage(index);
                            });
                          },
                          title: const Text(AppLabels.priceRange
                              // + index.toString(),
                              // selectionColor: Colors.white,
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
            // reverse: true,
            controller: controller,
            children: list,
            onPageChanged: (index) {
              print("object $index");
              current = index;
              setState(() {
                selectedIndex = index;
                controller.jumpToPage(index);
              });
            },
          )),
        ],
      ),
    );
  }
}
