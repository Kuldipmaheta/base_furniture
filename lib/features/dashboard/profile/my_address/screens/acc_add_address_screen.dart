import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/extensions/widget_extensions.dart';
import 'package:furniture/design/utils/gap.dart';
import 'package:furniture/design/utils/widgets/custom_app_bar.dart';
import 'package:furniture/design/utils/widgets/custom_text_field.dart';

class AccAddAddressScreen extends StatefulWidget {
  const AccAddAddressScreen({super.key});

  @override
  State<AccAddAddressScreen> createState() => _AccAddAddressScreenState();
}

class _AccAddAddressScreenState extends State<AccAddAddressScreen> {
  String dropDownValue = 'Kuwait';
  List<String> items = ['Kuwait', 'Australia', 'Canada'];
  List<String> city = ['Kuwait', 'Australia', 'Canada', 'Egypt', 'North america'];

  TextEditingController areaController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController avenueController = TextEditingController();
  TextEditingController buildingController = TextEditingController();
  TextEditingController floorController = TextEditingController();
  TextEditingController flatController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: CustomAppBar(
        title: "Add New Address",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: p24,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap.gapH16,
              CustomText(
                text: "Governate",
              ),
              Gap.gapH6,
              SizedBox(
                // height: 44,
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.kGrey100),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintStyle: const TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      // borderSide: const BorderSide(color: AppColors.kGrey100)
                    ),
                  ),
                  value: dropDownValue,
                  isExpanded: true,
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropDownValue = newValue!;
                    });
                  },
                ),
              ),
              Gap.gapH24,
              Text(
                'City',
                style: CustomUiText.size14,
              ),
              Gap.gapH6,
              SizedBox(
                // height: 44,
                child: DropdownButtonFormField<String>(
                  hint: const Text('Choose City'),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintStyle: const TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Colors.grey)),
                  ),
                  // value: dropDownValue,
                  isExpanded: true,
                  items: city.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? value) {},
                ),
              ),
              Gap.gapH24,
              const CustomText(
                text: "Area",
              ),
              Gap.gapH6,
              CustomTextField(
                controller: areaController,
                textCapitalization: TextCapitalization.sentences,
                hintText: "Enter Area",
              ),
              Gap.gapH24,
              const CustomText(
                text: "Street No",
              ),
              Gap.gapH6,
              CustomTextField(
                controller: streetController,
                textCapitalization: TextCapitalization.sentences,
                hintText: "Enter Street No",
              ),
              Gap.gapH24,
              const CustomText(
                text: "Avenue(Optional)",
              ),
              Gap.gapH6,
              CustomTextField(
                controller: avenueController,
                textCapitalization: TextCapitalization.sentences,
                hintText: "Enter Avenue",
              ),
              Gap.gapH24,
              const CustomText(
                text: "Building No",
              ),
              Gap.gapH6,
              CustomTextField(
                controller: buildingController,
                textCapitalization: TextCapitalization.sentences,
                hintText: "Building No",
              ),
              Gap.gapH24,
              const CustomText(
                text: "Floor",
              ),
              Gap.gapH6,
              CustomTextField(
                controller: floorController,
                textCapitalization: TextCapitalization.sentences,
                hintText: "Floor",
              ),
              Gap.gapH24,
              const CustomText(
                text: "Flat",
              ),
              Gap.gapH6,
              CustomTextField(
                controller: flatController,
                textCapitalization: TextCapitalization.sentences,
                hintText: "Flat",
              ),
              Gap.gapH30,
            ],
          ),
        ),
      ),
    );
  }
}
