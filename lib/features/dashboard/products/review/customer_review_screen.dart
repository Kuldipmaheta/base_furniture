import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/extensions/build_context_extension.dart';
import 'package:furniture/design/utils/extensions/text_style_extension.dart';
import 'package:furniture/features/dashboard/products/review/model/review_model.dart';
import 'package:furniture/features/dashboard/products/review/provider/get_data_provider.dart';
import 'package:provider/provider.dart';

import '../../../../core/constant/app_images.dart';
import '../../../../design/utils/gap.dart';
import '../../../../design/utils/widgets/custom_svg.dart';

class CustomerReviewScreen extends StatefulWidget {
  const CustomerReviewScreen({super.key});

  @override
  State<CustomerReviewScreen> createState() => _CustomerReviewScreenState();
}

class _CustomerReviewScreenState extends State<CustomerReviewScreen> {
  @override
  void initState() {
    Provider.of<GetDataProvider>(context, listen: false).getData();
    super.initState();
  }

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
      body: Consumer<GetDataProvider>(
        builder: (context, snapshot, _) {
          return snapshot.reviewModel == null
              ? const Center(child: CircularProgressIndicator())
              : ListView.separated(
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
                  itemCount: Provider.of<GetDataProvider>(context).reviewModel!.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    Data item = snapshot.reviewModel!.data![index];
                    return Padding(
                      padding: const EdgeInsets.only(left: 24.0, right: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Gap.gapH16,
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(item.avatar.toString()),
                              ),
                              /*ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.network(
                                  item.avatar.toString(),
                                  height: 40,
                                ),
                              ),*/
                              Gap.gapW12,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: "${item.firstName}" " ${item.lastName}",
                                    style: context.titleMedium
                                        .withColor(AppColors.kBlack400)
                                        .copyWith(fontWeight: FontWeight.w400),
                                  ),
                                  CustomText(
                                    text: item.email,
                                    style: context.titleSmall
                                        .withColor(AppColors.kGrey200)
                                        .copyWith(fontWeight: FontWeight.w400),
                                    // color: AppColors.kGrey200,
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Container(
                                decoration:
                                    BoxDecoration(color: AppColors.kYellow, borderRadius: BorderRadius.circular(5)),
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
                              style: context.titleSmall
                                  .withColor(AppColors.kGrey300)
                                  .copyWith(fontWeight: FontWeight.w400),
                            ),
                          ),
                          // const CustomText(text: "I'm absolutely in love with it!"),
                          CustomText(
                            maxLines: 3,
                            text: "The ultimate chair for reading, napping, or just chilling. \n"
                                "I'm absolutely in love with it!",
                            style:
                                context.titleSmall.withColor(AppColors.kGrey300).copyWith(fontWeight: FontWeight.w400),
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
                );
        },
      ),
    );
  }
}
