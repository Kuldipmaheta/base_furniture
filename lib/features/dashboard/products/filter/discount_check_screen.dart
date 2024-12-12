import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/design/utils/custom_text.dart';

class DiscountCheckScreen extends StatefulWidget {
  const DiscountCheckScreen({super.key});

  @override
  State<DiscountCheckScreen> createState() => _DiscountCheckScreenState();
}

class _DiscountCheckScreenState extends State<DiscountCheckScreen> {
  int? selectedValue;
  // bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 24.0,
          top: 24,
        ),
        child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 16.0,
                    ),
                    child: Radio(
                        activeColor: AppColors.kPrimaryColor,
                        visualDensity: VisualDensity(
                            horizontal: VisualDensity.minimumDensity, vertical: VisualDensity.minimumDensity),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: index,
                        groupValue: selectedValue,
                        onChanged: (int? value) {
                          setState(() {
                            selectedValue = value!;
                          });
                        }),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Text(
                        "10 % and above",
                        style: CustomUiText.size16,
                      ),
                    ),
                  )
                ],
              );
              /*ListTile(
                title: Text('data'),
                leading: Radio<int>(
                    value: index,
                    groupValue: selectedValue,
                    onChanged: (int? value) {
                      setState(() {
                        selectedValue = value!;
                      });
                    }),
              );*/
            }),
      ),
    );
  }
}
