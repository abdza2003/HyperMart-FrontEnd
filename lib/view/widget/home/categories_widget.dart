// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/constants/image_manager.dart';

class CategoriesWidget extends StatelessWidget {
  String categoryPath;
  String categoryName;
  Color color;
  CategoriesWidget({
    Key? key,
    required this.categoryPath,
    required this.categoryName,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        width: 100,
        // height: ,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              categoryPath,
              width: 35,
              height: 35,
            ),
            const SizedBox(height: 5),
            Text(
              '$categoryName',
              style: FontManager.latoRegular.copyWith(
                color: Colors.white,
                // fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
