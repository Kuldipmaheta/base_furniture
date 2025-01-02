import "package:flutter/material.dart";
import "package:furniture/core/constant/app_colors.dart";
import "package:furniture/core/constant/strings.dart";
import "package:furniture/design/utils/custom_button.dart";
import "package:furniture/design/utils/custom_text.dart";
import "package:furniture/design/utils/extensions/build_context_extension.dart";
import "package:furniture/design/utils/extensions/text_style_extension.dart";
import "package:furniture/design/utils/extensions/widget_extensions.dart";
import "package:furniture/design/utils/gap.dart";
import "package:furniture/design/utils/widgets/custom_text_field.dart";

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();

  String dropDownValue = 'Kuwait';
  List<String> items = ['Kuwait', 'Australia', 'Canada'];
  List<String> city = ['Kuwait', 'Australia', 'Canada', 'Egypt', 'North america'];

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController areaController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController avenueController = TextEditingController();
  TextEditingController buildingController = TextEditingController();
  TextEditingController floorController = TextEditingController();
  TextEditingController flatController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: p24,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap.gapH60,
                  CustomText(
                    text: AppLabels.setup,
                    style: context.titleLarge.withColor(AppColors.kBlack400).copyWith(fontWeight: FontWeight.w700),
                  ),
                  Gap.gapH12,
                  CustomText(
                    text: AppLabels.setupMsg,
                    style: context.titleMedium.withColor(AppColors.kGrey300).copyWith(fontWeight: FontWeight.w300),
                  ),
                  Gap.gapH30,
                  CustomText(
                    text: AppLabels.fullName,
                    style: context.titleSmall.withColor(AppColors.kGrey300).copyWith(fontWeight: FontWeight.w400),
                  ),
                  Gap.gapH6,
                  CustomTextField(
                    textCapitalization: TextCapitalization.sentences,
                    hintText: 'Enter Name',
                  ),
                  Gap.gapH24,
                  CustomText(
                    text: AppLabels.email,
                    style: context.titleSmall.withColor(AppColors.kGrey300).copyWith(fontWeight: FontWeight.w400),
                  ),
                  Gap.gapH6,
                  CustomTextField(
                    hintText: 'Enter Email',
                  ),
                  Gap.gapH24,
                  CustomText(
                    text: AppLabels.mobileNumber,
                    style: context.titleSmall.withColor(AppColors.kGrey300).copyWith(fontWeight: FontWeight.w400),
                  ),
                  Gap.gapH6,
                  CustomMobileTextField(),
                  /*Row(
                    children: [
                      Container(
                          height: 48,
                          width: 85,
                          decoration: BoxDecoration(
                              color: AppColors.kGrey100,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                              )),
                          child: Center(
                            child: CustomText(
                              text: "+965",
                              style: context.titleMedium
                                  .withColor(AppColors.kBlack400)
                                  .copyWith(fontWeight: FontWeight.w300),
                            ),
                          )),
                      Gap.gapW8,
                      Expanded(child: CustomMobileTextField()),
                    ],
                  ),*/
                  Gap.gapH24,
                  Text(
                    'Governate',
                    style: CustomUiText.size14,
                  ),
                  Gap.gapH6,
                  SizedBox(
                    // height: 44,
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintStyle: const TextStyle(color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Colors.grey)),
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
                        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
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
                  Text(
                    'Area',
                    style: CustomUiText.size14,
                  ),
                  Gap.gapH6,
                  CustomTextField(hintText: 'Enter Area'),
                  Gap.gapH24,
                  Text(
                    'Street No',
                    style: CustomUiText.size14,
                  ),
                  Gap.gapH6,
                  CustomTextField(hintText: 'Enter Street no'),
                  Gap.gapH24,
                  Text(
                    'Avenue(Optional)',
                    style: CustomUiText.size14,
                  ),
                  Gap.gapH6,
                  CustomTextField(hintText: 'Enter Avenue'),
                  Gap.gapH24,
                  Text(
                    'Building No',
                    style: CustomUiText.size14,
                  ),
                  Gap.gapH6,
                  CustomTextField(hintText: 'Building no'),
                  Gap.gapH24,
                  Text(
                    'Floor(Optional)',
                    style: CustomUiText.size14,
                  ),
                  Gap.gapH6,
                  CustomTextField(hintText: 'Floor'),
                  Gap.gapH24,
                  Text(
                    'Flat',
                    style: CustomUiText.size14,
                  ),
                  Gap.gapH6,
                  CustomTextField(hintText: 'Flat'),
                  Gap.gapH30,
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 52,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState != null) {
                          debugPrint('object ${_formKey.currentState!.validate()}');
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF95622D),
                        textStyle: CustomUiText.size16,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        foregroundColor: Colors.white,
                      ),
                      child: const Text("Submit"),
                    ),
                  ),
                  Gap.gapH30,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
