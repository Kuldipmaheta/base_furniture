import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/extensions/build_context_extension.dart';
import 'package:furniture/design/utils/extensions/other_extensions.dart';
import 'package:furniture/design/utils/extensions/text_style_extension.dart';
import 'package:furniture/design/utils/extensions/widget_extensions.dart';

class CounterWidget extends StatelessWidget {
  final Function? onIncrement;
  final Function? onDecrement;
  final int? quantity;
  const CounterWidget({super.key, this.onIncrement, this.onDecrement, this.quantity});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: p2,
          decoration: BoxDecoration(color: AppColors.kBlack400, borderRadius: BorderRadius.circular(4)),
          child: const Icon(
            Icons.remove,
            color: Colors.white,
          ),
        ).onTap(onTap: onDecrement),
        Padding(
          padding: p10,
          child: CustomText(
            text: "${quantity ?? 1}",
            style: context.titleMedium.withColor(AppColors.kGrey300).copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
        Container(
          padding: p2,
          decoration: BoxDecoration(color: AppColors.kBlack400, borderRadius: BorderRadius.circular(4)),
          // padding: p2,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ).onTap(onTap: onIncrement),
      ],
    );
  }
}
