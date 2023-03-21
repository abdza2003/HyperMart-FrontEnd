import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/constants/image_manager.dart';
import 'package:hypermart/core/constants/media_query.dart';

class NewFeaturesWidget extends StatelessWidget {
  String featureName;
  String iconPath;
  Color? iconColor;
  NewFeaturesWidget(
      {required this.featureName,
      required this.iconPath,
      this.iconColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 6,
        shadowColor: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.white,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          // width: 200,
          height: MediaQueryManager(context).height / 16,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SvgPicture.asset(
                  '$iconPath',
                  width: 30,
                  height: 30,
                  color: iconColor ?? null,
                ),
                const SizedBox(width: 15),
                Text(
                  '$featureName',
                  style: FontManager.poppinsMedium.copyWith(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
                // const SizedBox(width: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
