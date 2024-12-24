import 'package:furniture/export.dart';

extension CustomTextStyle on TextStyle {
  TextStyle get w300 => copyWith(fontWeight: FontWeight.w300);
  TextStyle get w400 => copyWith(fontWeight: FontWeight.w400);
  TextStyle get w500 => copyWith(fontWeight: FontWeight.w500);
  TextStyle get w600 => copyWith(fontWeight: FontWeight.w600);
  TextStyle get w700 => copyWith(fontWeight: FontWeight.w700);

  TextStyle size(double size) => copyWith(fontSize: size);

  TextStyle get s12 => copyWith(fontSize: 12);

  TextStyle get s16 => copyWith(fontSize: 16);

  TextStyle get s18 => copyWith(fontSize: 18);

  TextStyle get s20 => copyWith(fontSize: 20);

  TextStyle withColor(Color color) => copyWith(color: color);
}
