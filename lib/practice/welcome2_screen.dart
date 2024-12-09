import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/core/constant/app_images.dart';
import 'package:furniture/core/constant/strings.dart';
import 'package:furniture/design/utils/gap.dart';
import 'package:furniture/practice/home_screen.dart';
import '../core/services/shared_prefernce_services.dart';

class Welcome2Screen extends StatefulWidget {
  const Welcome2Screen({super.key});

  @override
  State<Welcome2Screen> createState() => _Welcome2ScreenState();
}

class _Welcome2ScreenState extends State<Welcome2Screen> {
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 180,
              right: 0,
              // left: 147,
              // alignment: Alignment.centerRight,
              child: Image.asset(AppImages.imgChair),
            ),
            const Positioned(
                top: 79,
                left: 24,
                // margin: const EdgeInsets.only(top: 80, left: 24),
                child: Text(
                  AppLabels.welcomeMessage1,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
            const Positioned(
                left: 24,
                bottom: 160,
                // alignment: AlignmentDirectional.bottomStart,
                child: Text(
                  AppLabels.welcomeMessage2,
                  style: TextStyle(fontSize: 18),
                )),
            Positioned(
              bottom: 50,
              right: 24,
              // alignment: AlignmentDirectional.bottomStart,
              child: Row(
                children: [
                  const Text(
                    AppLabels.getStarted,
                    style:
                        TextStyle(fontSize: 18, color: AppColors.kPrimaryColor),
                  ),
                  Gap.gapW10,
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_circle_right,
                      size: 50,
                      color: AppColors.kPrimaryColor,
                    ),
                    // Icons.arrow_circle_right,
                    // size: 50,color: Color(0xff95622D),
                    onPressed: () {
                      saveBool(value: false);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const HomeScreen()));
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
