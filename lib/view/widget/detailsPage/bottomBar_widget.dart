import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/constants/image_manager.dart';
import 'package:hypermart/core/constants/media_query.dart';
import 'package:hypermart/core/functions/hex_color.dart';
import 'package:hypermart/core/model/home/product_model.dart';

class BottomBarWidget extends StatelessWidget {
  List<ProductModel> listInfo;
  int productId;

  BottomBarWidget({required this.listInfo, required this.productId, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0),
      elevation: 10,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: Card(
                  elevation: 0,
                  color: HexColor('#fafafa'),
                  child: Container(
                    // width: 200,
                    // color: Colors.,
                    height: MediaQueryManager(context).height / 14,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${listInfo[productId].prodcut_price - (listInfo[productId].prodcut_price * listInfo[productId].product_discount) / 100} ${listInfo[productId].product_currencyType}',
                          style: FontManager.boldStyle.copyWith(
                            fontSize: 20,
                            color: ColorManager.primaryRed,
                          ),
                        ),
                        if (listInfo[productId].product_discount != 0)
                          Text(
                            '${listInfo[productId].prodcut_price} \$',
                            style: FontManager.poppinsMedium.copyWith(
                              color: Colors.black.withOpacity(.6),
                              fontSize: 14,
                              decoration: TextDecoration.lineThrough,
                              decorationColor: Colors.black.withOpacity(.6),
                              // decorationStyle: TextDecorationStyle.,
                              decorationThickness: 1.2,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                      ],
                    ),
                  ),
                )),
            Expanded(
              flex: 4,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(
                    0,
                    MediaQueryManager(context).height / 25,
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Add to card',
                      style: FontManager.boldStyle.copyWith(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(width: 5),
                    SvgPicture.asset(
                      ImageManager.iconDelivery,
                      width: 25,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
