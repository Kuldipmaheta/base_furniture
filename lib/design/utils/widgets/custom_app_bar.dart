import 'package:furniture/core/constant/app_images.dart';
import 'package:furniture/export.dart';
import 'package:flutter/services.dart';
import '../extensions/widget_extensions.dart';
import 'custom_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final String? subtitle;
  final String? imageUrl;
  final List<Widget>? actions;
  final SystemUiOverlayStyle? systemOverlayStyle;
  final PreferredSizeWidget? bottom;
  final Widget? backWidget;
  final Widget? titleWidget;
  final double? height;
  final bool isTrailingPad;
  final Function()? onBack;

  const CustomAppBar({
    super.key,
    this.title,
    this.subtitle,
    this.imageUrl,
    this.actions,
    this.systemOverlayStyle,
    this.titleWidget,
    this.bottom,
    this.backWidget,
    this.height,
    this.isTrailingPad = true,
    this.onBack,
  });

  @override
  Size get preferredSize => height != null ? Size.fromHeight(height!) : size48;

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
      child: AppBar(
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        systemOverlayStyle: systemOverlayStyle,
        title: titleWidget ??
            Row(
              children: [
                gap8,
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    onBack != null ? onBack!() : Navigator.of(context).pop();
                  },
                  child: backWidget ?? const CustomSvg(imgUrl: AppIcons.icBackArrow),
                ),
                if (isTrailingPad) gap12,
                if (imageUrl != null) ...[
                  /* CustomImage(
                    imageUrl: imageUrl!,
                    height: 34,
                    width: 34,
                    fit: BoxFit.cover,
                    radius: BorderRadius.circular(25),
                  ),*/
                  gap12,
                ],
                const Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(""),
                      /*CustomText(
                        text: title,
                        style: context.headlineMedium,
                      ),
                      if (subtitle != null)
                        if (!subtitle!.isTextBlank())
                          CustomText(
                            text: subtitle,
                            style: context.bodyMedium,
                          ),*/
                    ],
                  ),
                )
              ],
            ),
        actions: actions,
        bottom: bottom,
      ),
    );
  }
}
