import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/core/constant/app_images.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/gap.dart';
import 'package:furniture/design/utils/widgets/custom_svg.dart';
import 'package:furniture/features/dashboard/home/models/Home_response_model.dart';

class StarWidget extends StatefulWidget {
  final ProductList? model;
  const StarWidget({super.key, this.model});

  @override
  State<StarWidget> createState() => _StarWidgetState();
}

class _StarWidgetState extends State<StarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.kYellow, borderRadius: BorderRadius.circular(5)),
      height: 19,
      width: 40,
      // color: Colors.red,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        const CustomText(text: "4.1"
            // widget.model?.productRating.toString() ?? ""
            ),
        Gap.gapW4,
        const CustomSvg(
          imgUrl: AppIcons.icStar,
          width: 10,
          // width: 10,
        ),
      ]),
    );
  }
}
