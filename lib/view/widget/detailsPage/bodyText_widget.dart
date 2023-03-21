import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/constants/image_manager.dart';
import 'package:hypermart/core/model/home/product_model.dart';

class BodyTextWidget extends StatelessWidget {
  List<ProductModel> listInfo;
  int productId;

  BodyTextWidget({required this.listInfo, required this.productId, super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(0),
            // color: Colors.red,
            child: Text(
              listInfo[productId].product_name,
              style: FontManager.smallBoldStyle.copyWith(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${listInfo[productId].product_stars}'),
              const SizedBox(width: 10),
              Row(
                children: List.generate(5, (index) {
                  if (index < listInfo[productId].product_stars)
                    return SvgPicture.asset(
                      ImageManager.iconStar,
                      width: 15,
                      height: 15,
                    );
                  return SvgPicture.asset(
                    ImageManager.iconStar,
                    color: ColorManager.shadow,
                    width: 15,
                    height: 15,
                  );
                }),
              ),
              const SizedBox(width: 5),
              RotatedBox(
                  quarterTurns: 1,
                  child: SizedBox(
                    width: 25,
                    child: Divider(
                      color: Colors.black45,
                      thickness: 1.8,
                    ),
                  )),
              const SizedBox(width: 3),
              GestureDetector(
                onTap: () {
                  print('object');
                },
                child: Row(
                  children: [
                    Text(
                      '+ ${listInfo[productId].prdocut_comment} Review',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Icon(
                      Icons.camera_rounded,
                      size: 20,
                    ),
                    const SizedBox(width: 5),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              SvgPicture.asset(
                ImageManager.iconDelivery,
                width: 40,
                height: 40,
                color: ColorManager.fontGray,
              ),
              const SizedBox(width: 10),
              RichText(
                text: TextSpan(
                  text: 'Estimated delivery : ',
                  style: FontManager.latoBold
                      .copyWith(fontSize: 16, color: Colors.black87),
                  children: [
                    TextSpan(
                      text: 'within 6 days',
                      style: FontManager.latoBold.copyWith(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
