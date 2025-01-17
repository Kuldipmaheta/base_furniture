import 'package:furniture/export.dart';

Duration get delay0 => const Duration(seconds: 0);
Duration get delay3 => const Duration(seconds: 3);

//Size
Size get size48 => const Size.fromHeight(48);

//SizedBox
const SizedBox gap0 = SizedBox.shrink();
const SizedBox gap2 = SizedBox(height: 2, width: 2);
const SizedBox gap4 = SizedBox(height: 4, width: 4);
const SizedBox gap6 = SizedBox(height: 6, width: 6);
const SizedBox gap8 = SizedBox(height: 8, width: 8);
const SizedBox gap10 = SizedBox(height: 10, width: 10);
const SizedBox gap12 = SizedBox(height: 12, width: 12);
const SizedBox gap14 = SizedBox(height: 14, width: 14);
const SizedBox gap16 = SizedBox(height: 16, width: 16);
const SizedBox gap20 = SizedBox(height: 20, width: 20);
const SizedBox gap24 = SizedBox(height: 24, width: 24);
const SizedBox gap30 = SizedBox(height: 30, width: 30);
const SizedBox gap32 = SizedBox(height: 32, width: 32);
const SizedBox gap40 = SizedBox(height: 40, width: 40);
const SizedBox gap60 = SizedBox(height: 60, width: 60);
const SizedBox gap80 = SizedBox(height: 80, width: 80);

SizedBox gap(double size) => SizedBox(height: size, width: size);

SizedBox hgap(double size) => SizedBox(width: size);

double fSize8 = 8;
double fSize12 = 12;
double fSize14 = 14;
double fSize16 = 16;
double fSize18 = 18;
double fSize20 = 20;
double fSize22 = 22;
double fSize24 = 24;
double fSize28 = 28;
double fSize30 = 30;
double fSize40 = 40;
double fSize54 = 54;
double fSize60 = 60;
double fSize70 = 70;

// EdgeInsets
const EdgeInsets p0 = EdgeInsets.all(0);
const EdgeInsets p2 = EdgeInsets.all(2);
const EdgeInsets p4 = EdgeInsets.all(4);
const EdgeInsets p8 = EdgeInsets.all(8);
const EdgeInsets p6 = EdgeInsets.all(6);
const EdgeInsets p10 = EdgeInsets.all(10);
const EdgeInsets p12 = EdgeInsets.all(12);
const EdgeInsets p16 = EdgeInsets.all(16);
const EdgeInsets p20 = EdgeInsets.all(20);
const EdgeInsets p24 = EdgeInsets.only(left: 24, right: 24);
const EdgeInsets p30 = EdgeInsets.all(30);
const EdgeInsets p32 = EdgeInsets.all(32);

EdgeInsets pad(double padding) => EdgeInsets.all(padding);

EdgeInsets padX(double paddingX) => EdgeInsets.symmetric(horizontal: paddingX);

EdgeInsets padY(double paddingY) => EdgeInsets.symmetric(vertical: paddingY);

EdgeInsets padXY(double paddingX, double paddingY) => EdgeInsets.symmetric(horizontal: paddingX, vertical: paddingY);

EdgeInsets padOnly({double top = 0, double bottom = 0, double left = 0, double right = 0}) =>
    EdgeInsets.only(top: top, bottom: bottom, left: left, right: right);

//Radius
const Radius radius8 = Radius.circular(8);
const Radius radius12 = Radius.circular(12);

Radius radius(double r) => Radius.circular(r);

BoxDecoration getContainerDecoration(
    {Color borderColor = AppColors.kPrimaryColor, double radius = 8.0, Color? background}) {
  return BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(radius)),
    border: Border.fromBorderSide(BorderSide(color: borderColor)),
    color: background,
  );
}
