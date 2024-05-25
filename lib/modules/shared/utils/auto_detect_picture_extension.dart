import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AutoDetectPictureExtension extends StatelessWidget {
  const AutoDetectPictureExtension({
    super.key,
    required this.picturePath,
    this.height,
    this.color,
    this.boxfit = BoxFit.contain,
    this.width,
  });

  final String picturePath;
  final double? height;
  final Color? color;
  final BoxFit boxfit;
  final double? width;

  static String getPictureExtension(String picturePath) => picturePath.split('.').last;

  @override
  Widget build(BuildContext context) {
    final pictureExtension = getPictureExtension(picturePath);

    switch (pictureExtension) {
      case 'svg':
        return SvgPicture.asset(
          picturePath,
          color: color,
          fit: boxfit,
          width: width,
          height: height,
        );
      case 'png':
      case 'jpg':
      case 'jpeg':
        return Image.asset(
          picturePath,
          color: color,
          fit: boxfit,
          width: width,
          height: height,
        );
      default:
        throw Exception('Picture extension not supported: $pictureExtension');
    }
  }
}
