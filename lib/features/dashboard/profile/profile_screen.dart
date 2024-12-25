import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/core/constant/app_images.dart';
import 'package:furniture/core/constant/strings.dart';
import 'package:furniture/core/routes/app_routes.dart';
import 'package:furniture/design/utils/custom_button.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/gap.dart';
import 'package:furniture/features/dashboard/profile/widget/custom_profile_item.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            AppLabels.profile,
            style: CustomUiText.semiSize16,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 120,
                  color: AppColors.kPrimaryColor,
                ),
                Positioned(
                  left: 24,
                  top: 32,
                  child: CustomText(
                    text: AppLabels.welcome,
                    style: CustomUiText.semiSize18.copyWith(color: AppColors.kWhiteColor),
                  ),
                ),
                Positioned(
                  left: 24,
                  top: 69,
                  child: Row(
                    children: [
                      CustomText(
                        text: AppLabels.name,
                        style: CustomUiText.semiSize18.copyWith(color: AppColors.kWhiteColor),
                      ),
                      Gap.gapW8,
                      GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.editProfileScreen);
                          },
                          child: SvgPicture.asset('assets/icons/ic_edit.svg'))
                    ],
                  ),
                ),
                Positioned(top: 18, right: 23, child: SvgPicture.asset('assets/images/flower.svg'))
              ],
            ),
            Gap.gapH24,
            /* ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider();
                },
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 11,
                itemBuilder: (context, index) {
                  return CustomProfileItem(
                    title: AppLabels.myOrders,
                    leading: AppIcons.icShoppingBag,
                  );
                }),*/
            CustomProfileItem(
              title: AppLabels.myOrders,
              leading: AppIcons.icShoppingBag,
            ),
            CustomProfileItem(
              onTap: () {
                print("object");
                Get.toNamed(AppRoutes.myAddressScreen);
              },
              title: AppLabels.myAddress,
              leading: AppIcons.icAddress,
            ),
            CustomProfileItem(
              title: AppLabels.returnRefund,
              leading: AppIcons.icRefund,
            ),
            CustomProfileItem(
              title: AppLabels.myReviews,
              leading: AppIcons.icReviews,
            ),
            CustomProfileItem(
              title: AppLabels.changeLanguage,
              leading: AppIcons.icLanguage,
            ),
            const Divider(
              color: AppColors.kGrey100,
              thickness: 3,
            ),
            CustomProfileItem(
              title: AppLabels.aboutUs,
              leading: AppIcons.icAboutUs,
            ),
            CustomProfileItem(
              title: AppLabels.termsCondition,
              leading: AppIcons.icTerms,
            ),
            CustomProfileItem(
              title: AppLabels.returnPolicy,
              leading: AppIcons.icReturnPolicy,
            ),
            CustomProfileItem(
              title: AppLabels.shippingPolicy,
              leading: AppIcons.icShipping,
            ),
            CustomProfileItem(
              title: AppLabels.faqs,
              leading: AppIcons.icFaq,
            ),
            CustomProfileItem(
              title: AppLabels.contactUs,
              leading: AppIcons.icContact,
            ),
            Gap.gapH30,
            CustomButton(
              onPress: () {},
              text: 'Logout',
            ),
            Gap.gapH16,
            const Text(
              'Delete Account',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.kPrimaryColor,
                  color: AppColors.kPrimaryColor),
            ),
            Gap.gapH24
          ],
        ),
      ),
    );
  }
}
