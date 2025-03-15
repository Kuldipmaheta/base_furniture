import 'package:cached_network_image/cached_network_image.dart';
import 'package:furniture/export.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CustomImage extends StatelessWidget {
  final String imageUrl;
  final String? errorImageUrl;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final double? borderRadius;
  final BorderRadius? radius;

  const CustomImage({
    super.key,
    required this.imageUrl,
    this.errorImageUrl,
    this.height,
    this.width,
    this.fit,
    this.borderRadius,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      placeholder: (_, __) {
        return Skeletonizer(
          enabled: true,
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: const DecorationImage(image: AssetImage(AppImages.imgChair), fit: BoxFit.cover),
              borderRadius: radius ?? BorderRadius.circular(borderRadius ?? 0),
            ),
          ),
        );
      },
      imageBuilder: (ctx, img) {
        return imageUrl.contains(".svg")
            ? Container(
                height: height,
                width: width,
                decoration: BoxDecoration(borderRadius: radius ?? BorderRadius.circular(borderRadius ?? 0)),
                child: SvgPicture.network(
                  imageUrl,
                  fit: fit!,
                ),
              )
            : Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: img,
                      fit: fit,
                    ),
                    borderRadius: radius ?? BorderRadius.circular(borderRadius ?? 0)),
              );
      },
      errorWidget: (_, __, ___) {
        return imageUrl.contains(".svg")
            ? Container(
                height: height,
                width: width,
                decoration: BoxDecoration(borderRadius: radius ?? BorderRadius.circular(borderRadius ?? 0)),
                child: SvgPicture.network(
                  imageUrl,
                  fit: fit!,
                ),
              )
            : Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: radius ?? BorderRadius.circular(borderRadius ?? 0),
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: fit,
                  ),
                ),
              );
      },
    );
  }
}
