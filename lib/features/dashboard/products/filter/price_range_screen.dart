import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';

class PriceRangeScreen extends StatefulWidget {
  const PriceRangeScreen({super.key});

  @override
  State<PriceRangeScreen> createState() => _PriceRangeScreenState();
}

class _PriceRangeScreenState extends State<PriceRangeScreen> {
  double startValue = 0.0;
  double endValue = 30.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'KWD 0-KWD 2000',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              RangeSlider(
                  activeColor: AppColors.kPrimaryColor,
                  min: 0,
                  max: 50,
                  values: RangeValues(startValue, endValue),
                  onChanged: (values) {
                    setState(() {
                      startValue = values.start;
                      endValue = values.end;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
