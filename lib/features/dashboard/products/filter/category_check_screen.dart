import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/gap.dart';

class CategoryCheckScreen extends StatefulWidget {
  const CategoryCheckScreen({super.key});

  @override
  State<CategoryCheckScreen> createState() => _CategoryCheckScreenState();
}

class _CategoryCheckScreenState extends State<CategoryCheckScreen> {
  bool isChecked = false;
  int selectIndex = 0;
  final Set<int> selectedIndices = {};
  List data = ['Select All', 'Arm Chairs', 'Rocking Chairs', 'Folding Chairs', 'Iconic Chairs', 'Cafe Chairs'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      body: Container(
        margin: const EdgeInsets.only(left: 24, top: 24),
        child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 6,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Row(
                  children: [
                    Checkbox(
                        visualDensity: const VisualDensity(
                            horizontal: VisualDensity.minimumDensity, vertical: VisualDensity.minimumDensity),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        activeColor: AppColors.kPrimaryColor,
                        value: selectedIndices.contains(index),
                        onChanged: (values) {
                          setState(() {
                            if (values!) {
                              selectedIndices.add(index);
                            } else {
                              selectedIndices.remove(index);
                            }
                          });
                        }),
                    Gap.gapW6,
                    Text(
                      data[index],
                      style: CustomUiText.size16,
                    ),
                  ],
                ),
              );
              //listTile checkbox
              /*CheckboxListTile(
                  activeColor: AppColors.kPrimaryColor,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: selectedIndices.contains(index),
                  onChanged: (values) {
                    setState(() {
                      // isChecked = values!;
                      if (values!) {
                        selectedIndices.add(index);
                      } else {
                        selectedIndices.remove(index);
                      }
                    });
                  },
                  title: Text(data[index]));*/
            }),
      ),
    );
  }
}
