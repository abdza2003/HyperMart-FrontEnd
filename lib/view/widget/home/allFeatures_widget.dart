import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/image_manager.dart';
import 'package:hypermart/view/widget/home/newFeatures_widget.dart';

class AllFeaturesWidget extends StatelessWidget {
  const AllFeaturesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            NewFeaturesWidget(
                featureName: 'Bestsellers', iconPath: ImageManager.iconFire),
            NewFeaturesWidget(
                featureName: 'Daily coupons',
                iconPath: ImageManager.iconCoupon),
          ],
        ),
        Row(
          children: [
            NewFeaturesWidget(
              featureName: 'Categories',
              iconPath: ImageManager.iconCateogory,
              iconColor: ColorManager.primaryRed,
            ),
            NewFeaturesWidget(
                featureName: 'Special for you',
                iconPath: ImageManager.iconHeart),
          ],
        ),
      ],
    );
  }
}
