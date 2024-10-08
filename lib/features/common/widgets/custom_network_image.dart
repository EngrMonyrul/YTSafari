import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:yt_safari/core/constants/assets_consts.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({super.key, this.imgUrl, this.height, this.width});

  final String? imgUrl;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: height,
      width: width,
      imageUrl: imgUrl ?? "",
      fit: BoxFit.cover,
      placeholder: (context, url) {
        return const SizedBox(
          height: 30,
          width: 30,
          child: CircularProgressIndicator(),
        );
      },
      errorWidget: (context, url, error) {
        return Column(
          children: [
            Image.asset(AssetsConsts.icError),
          ],
        );
      },
    );
  }
}
