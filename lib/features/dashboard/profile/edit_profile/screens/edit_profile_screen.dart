import 'package:flutter/material.dart';
import 'package:furniture/design/utils/custom_button.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/gap.dart';
import 'package:furniture/design/utils/widgets/custom_text_field.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../welcome/screens/choose_language_screen.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Text(
          "Edit Profile",
          style: CustomUiText.semiSize16,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap.gapH16,
              const Text("Full name"),
              Gap.gapH6,
              CustomTextField(hintText: "Name"),
              Gap.gapH24,
              const Text("Mobile Number"),
              Gap.gapH6,
              Row(
                children: [
                  Container(
                      height: 50,
                      width: 85,
                      decoration: BoxDecoration(
                          color: AppColors.kGrey100,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColors.kGrey200, width: 1)),
                      child: Center(
                        child: Text(
                          '+965',
                          style: CustomUiText.size14,
                        ),
                      )),
                  Gap.gapW8,
                  Expanded(child: CustomMobileTextField()),
                ],
              ),
              Gap.gapH24,
              const Text("Email"),
              Gap.gapH6,
              CustomTextField(hintText: "email@gmail.com"),
              const SizedBox(
                height: 410,
              ),
              SizedBox(width: MediaQuery.of(context).size.width, height: 52, child: const CustomElevateBtn()),
            ],
          ),
        ),
      ),
    );
  }
}
