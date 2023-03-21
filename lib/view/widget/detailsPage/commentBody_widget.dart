import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/constants/image_manager.dart';

class CommentBodyWidget extends StatelessWidget {
  const CommentBodyWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        // margin: EdgeInsets.only(bottom: 40),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'User reviews',
              style: FontManager.boldStyle.copyWith(fontSize: 18),
            ),
            SizedBox(
              width: 400,
              child: Divider(
                color: ColorManager.fontGray,
                thickness: .4,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 15),
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.amber[100],
                    child: SvgPicture.asset(
                      ImageManager.iconStar,
                      width: 30,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'No comment yet ..!',
                    style: FontManager.latoBold.copyWith(
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
