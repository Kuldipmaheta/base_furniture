import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_colors.dart';

class CustomTextField extends StatelessWidget {
  String hintText;
  final TextCapitalization textCapitalization;
  final TextEditingController? controller;

  CustomTextField(
      {super.key, required this.hintText, this.textCapitalization = TextCapitalization.none, this.controller});

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        cursorColor: AppColors.kPrimaryColor,
        textCapitalization: textCapitalization,
        // textAlignVertical: TextAlignVertical.bottom,
        controller: controller,
        // key: _formKey,
        validator: (value) => value!.isEmpty ? "Please enter name" : null,
        // keyboardType: TextInputType.text,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
          // errorText: _validate ? "Value not empty" : null,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: AppColors.kGrey100)),
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(10),
          // ),
          hintText: hintText,
          hintStyle: const TextStyle(color: AppColors.kGrey200),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: AppColors.kGrey100)),
        ),
        /*onChanged: (value) {

        },*/
      ),
    );
  }
}
