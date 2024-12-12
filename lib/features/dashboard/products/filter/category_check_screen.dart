import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_colors.dart';

class CategoryCheckScreen extends StatefulWidget {
  const CategoryCheckScreen({super.key});

  @override
  State<CategoryCheckScreen> createState() => _CategoryCheckScreenState();
}

class _CategoryCheckScreenState extends State<CategoryCheckScreen> {
  bool isChecked = false;
  int selectIndex = 0;
  final Set<int> selectedIndices = Set();
  List data = ['Select All', 'Arm Chairs', 'Rocking Chairs', 'Folding Chairs', 'Iconic Chairs', 'Cafe Chairs'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: data.length,
            itemBuilder: (context, index) {
              return CheckboxListTile(
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
                  title: Text(data[index]));
            }),
      ),
    );
  }
}
