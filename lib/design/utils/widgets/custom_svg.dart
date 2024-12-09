import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSvg extends StatelessWidget {
  final double? height;
  final double? width;
  final String imgUrl;
  final BoxFit fit;
  final bool isFromNetwork;
  final Color? color;

  const CustomSvg({
    super.key,
    required this.imgUrl,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.isFromNetwork = false,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return isFromNetwork
        ? SvgPicture.network(
      imgUrl,
      width: width,
      height: height,
      fit: fit,
      colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
    )
        : SvgPicture.asset(
      imgUrl,
      width: width,
      height: height,
      fit: fit,
      colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
    );
  }
}
