import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/core/constant/app_images.dart';
import 'package:furniture/core/constant/strings.dart';
import 'package:furniture/core/routes/app_routes.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/extensions/build_context_extension.dart';
import 'package:furniture/design/utils/extensions/text_style_extension.dart';
import 'package:furniture/design/utils/gap.dart';
import 'package:furniture/design/utils/widgets/custom_app_bar.dart';
import 'package:furniture/design/utils/widgets/custom_svg.dart';
import 'package:get/get.dart';

class MyAddressScreen extends StatefulWidget {
  const MyAddressScreen({super.key});

  @override
  State<MyAddressScreen> createState() => _MyAddressScreenState();
}

class _MyAddressScreenState extends State<MyAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: CustomAppBar(
        title: AppLabels.myAddress,
        actions: [
          GestureDetector(
            onTap: () {
              Get.toNamed(AppRoutes.accAddAddressScreen);
            },
            child: CustomText(
              text: "Add New",
              style: context.titleMedium.withColor(AppColors.kPrimaryColor).copyWith(
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.kPrimaryColor),
            ),
          ),
          Gap.gapW24
        ],
      ),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 24.0,
              right: 24,
              top: 16,
            ),
            child: Container(
              // height: 300,
              decoration: BoxDecoration(
                  color: AppColors.kWhiteColor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.kGrey100)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomText(
                          text: "Maheta Kuldeep",
                          style:
                              context.titleMedium.withColor(AppColors.kDarkBlue).copyWith(fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                        const CustomSvg(imgUrl: AppIcons.icEdit),
                        Gap.gapW6,
                        const CustomSvg(imgUrl: AppIcons.icDelete),
                      ],
                    ),
                    Gap.gapH6,
                    CustomText(
                      text: "1157/2 Sector-2A,\nNear Swaminarayan Temple",
                      style: context.titleMedium.withColor(AppColors.kGrey300).copyWith(fontWeight: FontWeight.w300),
                    ),
                    Gap.gapH6,
                    CustomText(
                      text: "+91048 95289",
                      style: context.titleMedium.withColor(AppColors.kGrey300).copyWith(fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        /* children: [
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24, top: 16, bottom: 16),
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                  color: AppColors.kWhiteColor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.kGrey100)),
            ),
          ),
        ],*/
      ),
    );
  }
}
