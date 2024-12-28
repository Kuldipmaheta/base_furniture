import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/extensions/build_context_extension.dart';
import 'package:furniture/design/utils/extensions/text_style_extension.dart';
import 'package:furniture/design/utils/widgets/custom_app_bar.dart';

class ChangeLanguageScreen extends StatefulWidget {
  const ChangeLanguageScreen({super.key});

  @override
  State<ChangeLanguageScreen> createState() => _ChangeLanguageScreenState();
}

class _ChangeLanguageScreenState extends State<ChangeLanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.kWhiteColor,
        appBar: CustomAppBar(
          title: "Change Language",
        ),
        body: ListView.builder(
            padding: EdgeInsets.only(top: 16),
            itemCount: 2,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: AppColors.kWhiteColor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.kGrey100),
                ),
                child: CustomText(
                  text: "Maheta Kuldeep",
                  style: context.titleMedium.withColor(AppColors.kDarkBlue).copyWith(fontWeight: FontWeight.w500),
                ),
              );
            }));
  }
}
