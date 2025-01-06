import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/extensions/build_context_extension.dart';
import 'package:furniture/design/utils/extensions/text_style_extension.dart';

import 'extensions/widget_extensions.dart';

class ContainerButton extends StatelessWidget {
  const ContainerButton({
    super.key,
    required this.title,
    required this.onTap,
    this.height,
    this.padding = p16,
    this.margin,
    this.borderColor = AppColors.kPrimaryColor,
    this.background = AppColors.kPrimaryColor,
    this.textColor = AppColors.kWhiteColor,
    this.radius = 10,
    this.style,
    this.isLoading = false,
    this.isDisable = false,
  });

  final String title;
  final TextStyle? style;
  final VoidCallback onTap;
  final double? height;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Color borderColor;
  final Color background;
  final Color textColor;
  final double radius;
  final bool? isLoading;
  final bool? isDisable;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      // onTap: onTap,
      onTap: (isLoading ?? false) ? null : onTap,
      child: Container(
        height: height,
        margin: margin,
        padding: padding,
        alignment: Alignment.center,
        decoration: getContainerDecoration(
          borderColor: isDisable! ? AppColors.kGrey100 : borderColor,
          background: isDisable! ? AppColors.kGrey100 : background,
          radius: radius,
        ),
        child: isLoading!
            ? SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              )
            : CustomText(
                text: title,
                style: style ?? context.bodyMedium.withColor(isDisable! ? AppColors.kGrey200 : textColor),
                textAlign: TextAlign.center,
                maxLines: 1,
              ),
      ),
    );
  }
}
