import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/image_manager.dart';
import 'package:hypermart/core/constants/media_query.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Transform.translate(
          offset: Offset(
            MediaQueryManager(context).width / 100,
            MediaQueryManager(context).height / 100,
          ),
          child: SvgPicture.asset(
            ImageManager.backgroundImage1,
          ),
        ),
        Transform.translate(
          offset: Offset(
            MediaQueryManager(context).width / 7,
            MediaQueryManager(context).height / -18,
          ),
          child: SvgPicture.asset(
            ImageManager.backgroundImage2,
          ),
        ),
        Transform.translate(
          offset: Offset(
            MediaQueryManager(context).width / -10,
            MediaQueryManager(context).height / 4,
          ),
          child: SvgPicture.asset(
            ImageManager.backgroundImage5,
          ),
        ),
        Transform.translate(
          offset: Offset(
            MediaQueryManager(context).width / 4,
            MediaQueryManager(context).height / 9,
          ),
          child: SvgPicture.asset(
            ImageManager.backgroundImage4,
          ),
        ),
        Transform.translate(
          offset: Offset(
            MediaQueryManager(context).width / 2.6,
            MediaQueryManager(context).height / 5,
          ),
          child: SvgPicture.asset(
            ImageManager.backgroundImage5,
          ),
        ),
      ],
    ));
  }
}
