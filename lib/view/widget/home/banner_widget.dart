import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/constants/media_query.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(20),
      width: double.infinity,
      height: MediaQueryManager(context).height / 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.amber,
      ),
      child: Stack(
        children: [
          Positioned(
            left: 220,
            // top: 20,
            bottom: 40,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white38,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Happy Weekend',
                  style: FontManager.latoBold.copyWith(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // const SizedBox(height: 5),
                Text(
                  '25% OFF',
                  style: FontManager.extraBoldStyle.copyWith(
                    fontSize: 40,
                  ),
                ),
                Text(
                  '*for All Menus',
                  style: FontManager.smallBoldStyle.copyWith(
                    color: ColorManager.fontBlack.withOpacity(.6),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
