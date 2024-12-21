/*
import 'package:flutter/material.dart';

class ChooseLanguageScreen extends StatefulWidget {
  const ChooseLanguageScreen({super.key});

  @override
  State<ChooseLanguageScreen> createState() => _ChooseLanguageScreenState();
}

class _ChooseLanguageScreenState extends State<ChooseLanguageScreen> {
  String lang = "English";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorsRecourse.chooseLangBgColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/choose_language_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          verticalDirection: VerticalDirection.up,
          children: [
            Padding(
              padding: px24.copyWith(right: 24, bottom: 24),
              child: Container(
                height: MediaQuery.of(context).size.height / 3.3,
                width: MediaQuery.of(context).size.height / 1,
                decoration: BoxDecoration(
                    // color: ColorsRecourse.white,
                    // borderRadius: BorderRadius.circular(bR20),
                    ),
                child: Padding(
                  padding: p16,
                  child: Column(
                    children: [
                      Padding(
                        padding: p8,
                        child: Container(
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.width / 1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1, color: ColorsRecourse.lightGrey),
                          ),
                          child: Row(
                            children: [
                              Radio(
                                value: "English",
                                groupValue: lang,
                                onChanged: (value) {
                                  setState(() {
                                    lang = value!;
                                  });
                                },
                              ),
                              Text(TextResources.english),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: p8,
                        child: Container(
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.width / 1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1, color: ColorsRecourse.lightGrey),
                          ),
                          child: Row(
                            children: [
                              Radio(
                                value: "arebic",
                                groupValue: lang,
                                onChanged: (value) {
                                  setState(() {
                                    lang = value!;
                                  });
                                },
                              ),
                              Text(TextResources.arabic),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: py12.copyWith(
                          right: 8,
                          left: 8,
                        ),
                        child: CustomElevatedBottun(
                          txtColor: Colors.white,
                          onPress: () {},
                          btnColor: ColorsRecourse.brown,
                          txt: TextResources.continueTxt,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            gap12,
            Padding(
              padding: px24,
              child: CustomText(
                text: TextResources.changeLanguage,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/
