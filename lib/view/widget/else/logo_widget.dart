import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LogoWidget extends StatelessWidget {
  double imageSize;
  double? imageSize2;
  LogoWidget({required this.imageSize, this.imageSize2, super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'Hyper',
          style: FontManager.boldStyle.copyWith(
            fontSize: imageSize,
          ),
          children: [
            TextSpan(
              text: 'Mart',
              style: FontManager.extraBoldStyle.copyWith(
                color: ColorManager.primaryRed,
                fontSize: imageSize2 ?? imageSize + 30.0,
              ),
            )
          ]),
    );
  }
}
