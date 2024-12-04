import 'package:flutter/material.dart';

class CustomUiText{
  static TextStyle size28 = TextStyle(fontSize: 28, fontWeight: FontWeight.bold);
  static TextStyle size16 = TextStyle(fontSize: 16);
  static TextStyle size14 = TextStyle(fontSize: 14);
  static TextStyle semiSize16 = TextStyle(fontSize: 16,fontWeight: FontWeight.bold);

}


class CustomText2 extends StatelessWidget {
  const CustomText2({super.key});
  @override
  Widget build(BuildContext context) {
    return Text(
      'Categories',
      style: TextStyle(
          fontSize: 16, fontWeight: FontWeight.bold),
    );
  }
}
/*class CustomBoldText {
  static TextStyle size28 = TextStyle(fontSize: 28, fontWeight: FontWeight.bold);
  static TextStyle size16 = TextStyle(fontSize: 16);
  static TextStyle size14 = TextStyle(fontSize: 14);
}*/


class CustomTextUl extends StatelessWidget {
  const CustomTextUl({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


