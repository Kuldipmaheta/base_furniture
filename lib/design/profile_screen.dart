import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/core/constant/strings.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/gap.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          StringConst.profile,
          style: CustomUiText.size16,
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 120,
            color: AppColors.kPrimaryColor,
          ),
          Gap.gapH24,
          // ListTile(leading: SvgPicture.asset('bytesLoader'),)

        ],
      ),
    );
  }
}
