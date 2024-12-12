import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final TextStyle? style;
  final int? maxLines;
  final TextAlign? textAlign;
  final TextOverflow? overflow;

  const CustomText({
    super.key,
    this.text,
    this.style,
    this.maxLines,
    this.textAlign,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: overflow,
      style: style ?? Theme.of(context).textTheme.bodyMedium,
    );
  }
}

class CustomUiText {
  static TextStyle size28 = TextStyle(fontSize: 28, fontWeight: FontWeight.bold);
  static TextStyle size16 = TextStyle(fontSize: 16);
  static TextStyle size14 = TextStyle(fontSize: 14);
  static TextStyle semiSize14 = TextStyle(fontSize: 14, fontWeight: FontWeight.bold);
  static TextStyle semiSize16 = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  static TextStyle semiSize18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
}

class CustomText2 extends StatelessWidget {
  const CustomText2({super.key});
  @override
  Widget build(BuildContext context) {
    return Text(
      'Categories',
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    );
  }
}
