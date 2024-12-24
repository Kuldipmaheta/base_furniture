import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_colors.dart';
import 'package:furniture/core/constant/strings.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/extensions/build_context_extension.dart';
import 'package:furniture/design/utils/extensions/text_style_extension.dart';
import 'package:furniture/design/utils/gap.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool changeButton = false;

  TextEditingController mobileController = TextEditingController();
  String? inputtedValue;
  // you can add more fields if needed
  bool userInteracts() => inputtedValue != null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap.gapH12,
              CustomText(
                text: AppLabels.logInTitle,
                style: context.titleMedium
                    .withColor(AppColors.kBlack400)
                    .copyWith(fontWeight: FontWeight.w600, fontSize: 28),
              ),
              Gap.gapH12,
              CustomText(
                text: AppLabels.logInDescr,
                style: context.titleMedium.withColor(AppColors.kGrey300_2).copyWith(fontWeight: FontWeight.w300),
              ),
              Gap.gapH40,
              CustomText(
                text: AppLabels.mobileNumber,
              ),
              Gap.gapH6,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 44,
                      width: 85,
                      decoration: BoxDecoration(
                          // color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColors.kGrey100, width: 1)),
                      child: Center(
                        child: Text(
                          '+965',
                          style: CustomUiText.size14,
                        ),
                      )),
                  Gap.gapW8,
                  Expanded(
                      child: SizedBox(
                    // color: Colors.blue,
                    // margin: const EdgeInsets.only(right: 24),
                    height: 44,
                    child: TextFormField(
                      validator: (value) => value!.isEmpty ? "Please enter mobile number" : null,
                      controller: mobileController,
                      keyboardType: TextInputType.number,
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                        // constraints: BoxConstraints(maxHeight: 60, minHeight: 60),
                        // isDense: true,
                        contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Enter mobile number',
                        hintStyle: const TextStyle(color: AppColors.kGrey200),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: AppColors.kGrey100)),
                      ),
                      /*validator: (value){
                        if (value == null || value.isEmpty) {
                          return 'mobile number length at least 10';
                        }
                        return null;
                      },*/
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                  )),
                ],
              ),
              Gap.gapH30,
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {
                    /*if (_formKey.currentState != null) {
                      print('object ${_formKey.currentState!.validate()}');
                    }*/
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF95622D),
                    textStyle: CustomUiText.size16,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Continue"),
                ),
              ),
              Gap.gapH24,
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {
                    /*if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Enter Valid Number')));
                    }*/
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Color(0xFF95622D)), borderRadius: BorderRadius.circular(10)),
                    foregroundColor: const Color(0xFF95622D),
                  ),
                  child: const Text(
                    "Continue as Guest",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              /* Stack(
                // alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                      child: Text(
                          "By continuing, I agree to the Terms of Use & \nPrivacy Policy")),
                ],
              ),*/
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
                child: Column(
                  children: [
                    Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(
                        text: 'By continuing, I agree to the ',
                        style: CustomUiText.size16,
                        children: const [
                          TextSpan(children: [
                            TextSpan(
                                text: 'Terms of use',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.kPrimaryColor,
                                    decoration: TextDecoration.underline,
                                    decorationColor: AppColors.kPrimaryColor)),
                            TextSpan(text: ' &\n'),
                            TextSpan(
                                text: 'Privacy Policy',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.kPrimaryColor,
                                    decoration: TextDecoration.underline,
                                    decorationColor: AppColors.kPrimaryColor))
                          ])
                        ],

                        // text: "By continuing, I agree to the ",
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
