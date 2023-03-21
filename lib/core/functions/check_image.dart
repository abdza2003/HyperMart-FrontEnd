import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hypermart/core/constants/media_query.dart';
import 'package:hypermart/view/widget/else/logo_widget.dart';

checkImage({required String imageUrl, double? logoSize, double? logoSize2}) {
  return CachedNetworkImage(
    imageUrl: imageUrl,
    fadeInDuration: const Duration(seconds: 2),
    placeholderFadeInDuration: const Duration(seconds: 1),
    fadeOutDuration: const Duration(seconds: 2),
    imageBuilder: (context, imageProvider) => Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          // fit: BoxFit.fill,
          image: NetworkImage(
            imageUrl,
          ),
        ),
      ),
    ),
    progressIndicatorBuilder: (context, url, downloadProgress) =>
        AnimatedOpacity(
      opacity: .3,
      duration: const Duration(milliseconds: 1200),
      child: Container(
        alignment: Alignment.center,
        // color: Colors.red,
        height: MediaQueryManager(context).height / 1.5,
        child:
            LogoWidget(imageSize: logoSize ?? 15, imageSize2: logoSize2 ?? 25),
      ),
    ),
  );
}
