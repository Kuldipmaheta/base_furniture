import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/extensions/build_context_extension.dart';
import 'package:furniture/design/utils/extensions/text_style_extension.dart';

import '../../../../core/constant/app_images.dart';
import '../../../../design/utils/gap.dart';
import '../../../../design/utils/widgets/custom_svg.dart';

class CustomerReviewScreen extends StatefulWidget {
  const CustomerReviewScreen({super.key});

  @override
  State<CustomerReviewScreen> createState() => _CustomerReviewScreenState();
}

class _CustomerReviewScreenState extends State<CustomerReviewScreen> {
  bool _visible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          forceMaterialTransparency: true,
          titleSpacing: 0,
          title: CustomText(
            text: "Customer Reviews",
            style: context.titleMedium.withColor(AppColors.kBlack400).copyWith(fontWeight: FontWeight.w600),
          )),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(left: 24.0, right: 24),
            child: Divider(
              color: AppColors.kGrey100,
              thickness: 1,
            ),
          );
        },
        physics: const AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap.gapH16,
                Row(
                  children: [
                    CircleAvatar(
                      child: Image.asset('assets/images/ellipse_img.png'),
                    ),
                    Gap.gapW12,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Noura Rashidi',
                          style:
                              context.titleMedium.withColor(AppColors.kBlack400).copyWith(fontWeight: FontWeight.w400),
                        ),
                        CustomText(
                          text: '17 June, 2024',
                          style: context.titleSmall.withColor(AppColors.kGrey200).copyWith(fontWeight: FontWeight.w400),
                          // color: AppColors.kGrey200,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(color: AppColors.kYellow, borderRadius: BorderRadius.circular(5)),
                      height: 19,
                      width: 40,
                      // color: Colors.red,
                      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                        const Text("4.5"),
                        Gap.gapW4,
                        const CustomSvg(
                          imgUrl: AppIcons.icStar,
                          width: 10,
                          // width: 10,
                        ),
                      ]),
                    )
                  ],
                ),
                Gap.gapH12,
                Visibility(
                  visible: _visible,
                  child: CustomText(
                    maxLines: 2,
                    text: "The ultimate chair for reading, napping, or just chilling. \n"
                        "I'm absolutely in love with it!"
                        " I'm absolutely in love with it!",
                    style: context.titleSmall.withColor(AppColors.kGrey300).copyWith(fontWeight: FontWeight.w400),
                  ),
                ),
                // const CustomText(text: "I'm absolutely in love with it!"),
                CustomText(
                  maxLines: 3,
                  text: "The ultimate chair for reading, napping, or just chilling. \n"
                      "I'm absolutely in love with it!",
                  style: context.titleSmall.withColor(AppColors.kGrey300).copyWith(fontWeight: FontWeight.w400),
                ),
                Gap.gapH12,
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _visible = !_visible;
                    });
                  },
                  child: CustomText(
                    text: _visible ? "View Less" : "View More",
                    style: context.titleMedium.withColor(AppColors.kPrimaryColor).copyWith(
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.kPrimaryColor,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Gap.gapH16,
                /*const Divider(
                          height: 4,
                          color: AppColors.kGrey100,
                          thickness: 2,
                        ),*/
              ],
            ),
          );
        },
      ),
    );
  }
}
