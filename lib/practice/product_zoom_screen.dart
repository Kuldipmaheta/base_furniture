import 'package:flutter/material.dart';
import 'package:furniture/design/utils/gap.dart';

class ProductZoomScreen extends StatefulWidget {
  const ProductZoomScreen({super.key});

  @override
  State<ProductZoomScreen> createState() => _ProductZoomScreenState();
}

class _ProductZoomScreenState extends State<ProductZoomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/images/chair_image.png',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return Gap.gapW10;
                    },
                    itemCount: 10,
                    primary: true,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Image.asset(
                        'assets/images/image1.png',
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
