import 'package:flutter/material.dart';
import 'package:furniture/design/utils/custom_button.dart';
import 'package:furniture/design/utils/custom_text.dart';
import 'package:furniture/design/utils/gap.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 24),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap.gapH12,
              Text(
                "Let's Get Started",
                style: CustomUiText.size28,
              ),
              Gap.gapH12,
              Text("Unlock your dream space with a few taps",
                  style: CustomUiText.size16),
              Gap.gapH40,
              Text('Mobile Number'),
              Gap.gapH6,
              Row(
                children: [
                  Container(
                      height: 44,
                      width: 85,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: Center(
                        child: Text(
                          '+965',
                          style: CustomUiText.size14,
                        ),
                      )),
                  Gap.gapW8,
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.only(right: 24),
                    height: 44,
                    width: 85,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Enter mobile nomber',
                        hintStyle: const TextStyle(color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey)),
                      ),
                      /*validator: (value){
                        if (value == null || value.isEmpty) {
                          return 'mobile nomber length at least 10';
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
              Container(
                margin: EdgeInsets.only(right: 24),
                width: MediaQuery.of(context).size.width,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Enter Valid Number')));
                    }
                  },
                  child: Text("Continue"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF95622D),
                    textStyle: CustomUiText.size16,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
              Gap.gapH24,
              Container(
                margin: EdgeInsets.only(right: 24),
                width: MediaQuery.of(context).size.width,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Continue as Guest"),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFF95622D)),
                        borderRadius: BorderRadius.circular(10)),
                    foregroundColor: Color(0xFF95622D),
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
              Center(
                child: RichText(
                    text: TextSpan(
                      children: [TextSpan(
                        text: "hello"
                      )],
                        text:
                            "By continuing, I agree to the Terms of Use & \nPrivacy Policy")),
              )
              // CustomDarkButton(onpress: () {})
            ],
          ),
        ),
      ),
    );
  }
}
