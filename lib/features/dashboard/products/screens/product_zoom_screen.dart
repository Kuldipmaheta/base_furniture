import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/design/utils/gap.dart';

class ProductZoomScreen extends StatefulWidget {
  const ProductZoomScreen({super.key});

  @override
  State<ProductZoomScreen> createState() => _ProductZoomScreenState();
}

class _ProductZoomScreenState extends State<ProductZoomScreen> {
  List list = [""];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24),
              child: InteractiveViewer(
                minScale: 1,
                maxScale: 3,
                //zooming
                // scaleEnabled: true,
                // dragging
                // panEnabled: true,
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/chair_image.png",
                          ),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            const SizedBox(
              height: 130,
            ),
            SizedBox(
              height: 114,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return Gap.gapW8;
                    },
                    itemCount: 5,
                    primary: true,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(10),
                            /* image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/chair_image.png",
                                ),
                                fit: BoxFit.cover),*/
                            border: Border.all(color: AppColors.kPrimaryColor)),
                        child: Image.asset(
                          'assets/images/chair_image.png',
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
