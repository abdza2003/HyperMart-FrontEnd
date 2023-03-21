import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';

class SeartchTextFaildWidget extends StatelessWidget {
  SeartchTextFaildWidget({this.size, this.color = Colors.white, super.key});
  double? size;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(0),
      child: TextField(
        style: FontManager.smallBoldStyle,
        decoration: InputDecoration(
            fillColor: color ?? null,
            filled: true,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 10, vertical: size ?? 20),
            hintText: 'Search Anything...',
            hintStyle: FontManager.smallBoldStyle.copyWith(
              color: ColorManager.fontGray,
            ),
            suffixIcon: const Icon(
              Icons.keyboard_voice_outlined,
              size: 30,
            ),
            prefixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_outlined,
                size: 30,
              ),
            )),
      ),
    );
  }
}
