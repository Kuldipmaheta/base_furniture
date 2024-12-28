import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/core/constant/strings.dart';
import 'package:furniture/design/utils/gap.dart';
import 'package:furniture/design/utils/widgets/custom_app_bar.dart';
import 'package:furniture/practice/model.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.kWhiteColor,
        appBar: const CustomAppBar(
          title: AppLabels.favorites,
        ),
        /* AppBar(
          forceMaterialTransparency: true,
          // title: Text("Favorites"),
          titleSpacing: 0,
          // leading: Image.asset('assets/images/back_arrow.png'),
          title: const Text(
            'Favorites',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          //already assign back arrow
          // leading: const ImageIcon(AssetImage('assets/images/back_arrow.png')),
        ),*/
        body: SafeArea(
          child: ListView.separated(
            padding: const EdgeInsets.only(
              top: 16.0,
            ),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.only(top: 24.0, bottom: 24),
                child: Divider(
                  height: 4,
                  color: AppColors.kGrey100,
                  thickness: 4,
                ),
              );
            },
            // Divider(),
            scrollDirection: Axis.vertical,
            itemCount: popularFurnitureList.length,
            itemBuilder: (context, index) {
              Furniture item = popularFurnitureList[index];
              return Padding(
                padding: const EdgeInsets.only(
                  left: 24.0,
                  right: 24,
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Gap.gapH13,
                    const Column(
                      children: [
                        Image(
                          image: AssetImage('assets/images/image2.png'),
                        ),
                      ],
                    ),
                    Gap.gapW16,
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            title: item.vendorName,
                            color: AppColors.kGrey200,
                          ),
                          Gap.gapH6,
                          Text(
                            item.productName,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Gap.gapH6,
                          Row(
                            children: [
                              Text(
                                item.originalPrice.toString(),
                                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Gap.gapW10,
                              // Spacer(),
                              Text(
                                item.discountedPrice.toString(),
                                style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough,
                                    decorationColor: Colors.grey),
                              ),
                            ],
                          ),
                          Gap.gapH16,
                          IntrinsicHeight(
                            child: Row(
                              children: [
                                const Text(
                                  'Add to Cart',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Color(0xFF95622D),
                                      color: Color(0xFF95622D)),
                                ),
                                Gap.gapW16,
                                const VerticalDivider(
                                  color: Colors.grey,
                                  thickness: 1,
                                ),
                                Gap.gapW16,
                                // const Spacer(),
                                const Text(
                                  'Remove',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ));
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.title,
    this.color,
    this.style,
    this.maxLines,
  });
  final String? title;
  final Color? color;
  final TextStyle? style;
  final int? maxLines;
  // final String

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: maxLines ?? 1,
      title ?? "",
      style: TextStyle(
        color: color ?? AppColors.kBlack400,
        overflow: TextOverflow.ellipsis,
        fontSize: 16,
      ),
    );
  }
}
