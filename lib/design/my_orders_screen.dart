import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/core/constant/app_images.dart';
import 'package:furniture/core/constant/strings.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/gap.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({super.key});

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ImageIcon(
          AssetImage('assets/images/back_arrow.png'),
          size: 10,
        ),
        title: Text(
          AppLabels.myOrders,
          style: CustomUiText.semiSize16,
        ),
        actions: [
          SvgPicture.asset(AppIcons.icFilter),
          Gap.gapW8,
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Text(
              AppLabels.filter,
              style: CustomUiText.size16,
            ),
          )
        ],
      ),
      body: ListView.separated(
        scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return Gap.gapW16;
          },
          itemCount: 1,
          itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 24.0,right: 24),
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/orders_icon.svg'),
                    Gap.gapW10,
                    Column(
                      children: [
                        Text("Ordered Placed"),
                        Text("Ordered Placed"),
                      ],
                    ),
                    Gap.gapW20,
                    Column(
                      textDirection: TextDirection.rtl,
                      // mainAxisAlignment: MainAxisAlignment.end,
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Order Id'),
                        Text('Order Id'),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [

                      ],
                    ),
                    Column(
                      children: [

                      ],
                    )
                  ],
                )
              ],
            ),
          );
          },

      ),
    );
  }
}
