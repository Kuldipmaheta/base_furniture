import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/extensions/build_context_extension.dart';
import 'package:furniture/design/utils/extensions/text_style_extension.dart';

import '../../../core/constant/app_colors.dart';
import '../extensions/widget_extensions.dart';

class CustommTextField extends StatelessWidget {
  final String? title;
  final TextStyle? titleStyle;
  final String hintText;
  final TextEditingController controller;
  final bool isRequired;
  final String? Function(String?)? validator;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String)? onChanged;
  final TextInputAction? textInputAction;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool readOnly;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextCapitalization textCapitalization;
  final int? maxLine;
  final int? minLines;
  final int? maxLength1;
  final bool? enabled;
  final InputBorder? border;
  final FocusNode? focusNode;
  final EdgeInsets? padding;
  const CustommTextField(
      {super.key,
      this.title,
      this.titleStyle,
      required this.hintText,
      required this.controller,
      this.isRequired = false,
      this.validator,
      this.textInputType,
      this.inputFormatters,
      this.onChanged,
      this.textInputAction,
      this.prefixIcon,
      this.suffixIcon,
      this.readOnly = false,
      this.obscureText = false,
      this.keyboardType = TextInputType.text,
      this.textCapitalization = TextCapitalization.none,
      this.maxLine,
      this.minLines,
      this.maxLength1,
      this.enabled = true,
      this.border,
      this.focusNode,
      this.padding = const EdgeInsets.all(16)});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: title,
          style: context.titleSmall.withColor(AppColors.kGrey300).copyWith(fontWeight: FontWeight.w400),
        ),
        gap8,
        TextFormField(
          controller: controller,
          enabled: enabled ?? true,
          // readOnly: enabled ?? false,
          keyboardType: keyboardType,
          style: context.titleSmall.withColor(AppColors.kBlack400).copyWith(fontWeight: FontWeight.w400),
          validator: validator ??
              (string) {
                return null;
              },
          onChanged: onChanged, maxLines: maxLine,
          textCapitalization: TextCapitalization.sentences,
          inputFormatters: inputFormatters,
          textInputAction: textInputAction,
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintStyle: context.titleSmall.withColor(AppColors.kGrey200).copyWith(fontWeight: FontWeight.w400),
            border: border,
            filled: enabled ?? false ? false : true,
            disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: enabled ?? true ? Colors.white : AppColors.kGrey100),
                borderRadius: BorderRadius.circular(10)),
            fillColor: enabled ?? true ? Colors.white : AppColors.kGrey100,
            enabledBorder: border,
            focusedBorder: border,
            isCollapsed: true,
            focusedErrorBorder: border,
            contentPadding: pad(fSize16),
            errorBorder: border,
          ),
        )
      ],
    );
  }
}
