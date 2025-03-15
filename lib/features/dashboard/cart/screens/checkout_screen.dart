import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/design/utils/widgets/custom_app_bar.dart';

class CheckoutScreen extends StatefulWidget {
  final int? index;
  const CheckoutScreen({super.key, this.index});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.kWhiteColor,
        appBar: CustomAppBar(
          title: "Checkout",
        ),
        body: Column(
          children: [],
        ));
  }
}
