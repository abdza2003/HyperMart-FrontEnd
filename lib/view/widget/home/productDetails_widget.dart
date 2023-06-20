import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hypermart/controller/home/detailsPage_controller.dart';
import 'package:hypermart/controller/home/homePage_controller.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/constants/image_manager.dart';
import 'package:hypermart/core/constants/media_query.dart';
import 'package:hypermart/core/functions/check_image.dart';
import 'package:hypermart/core/functions/hex_color.dart';
import 'package:hypermart/core/model/home/product_model.dart';
import 'package:hypermart/view/screen/home/details_screen.dart';
import 'package:hypermart/view/widget/else/logo_widget.dart';

class ProductDetailsWidget extends GetView<DetailsPageControllerImp> {
  int productId;
  List<ProductModel> listInfo;

  ProductDetailsWidget({
    required this.productId,
    required this.listInfo,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: ColorManager.textFaild.withOpacity(.5),
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onTap: () {
        // Get.to(() => DetailsScreen(listInfo: listInfo, productId: productId));
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    DetailsScreen(listInfo: listInfo, productId: productId)));
        controller.showFavoriteButton = false;
      },
      child: Container(
        // color: Colors.red,
        width: MediaQueryManager(context).width / 4.8,
        margin: const EdgeInsets.all(5),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  // padding: EdgeInsets.all(20),
                  // width: MediaQueryManager(context).width / 4.3,
                  height: MediaQueryManager(context).height / 4.2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: ColorManager.shadow.withOpacity(.3),
                      width: 2,
                    ),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: checkImage(
                          imageUrl: listInfo[productId].product_mainImage)),

                  /* Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          // fit: BoxFit.fill,
                          image: NetworkImage(
                            listInfo[productId].product_mainImage,
                          ),
                        ),
                      ),
                    ),
                  ), */
                ),
                if (listInfo[productId].product_discount != 0)
                  Positioned(
                    top: MediaQueryManager(context).width / 45,
                    left: MediaQueryManager(context).width / 11,
                    child: Transform.rotate(
                      angle: .8,
                      child: Container(
                        width: MediaQueryManager(context).width / 6.5,
                        height: MediaQueryManager(context).width / 27,
                        color: ColorManager.primaryRed,
                        alignment: Alignment.center,
                        child: Text(
                          '${listInfo[productId].product_discount}% OFF',
                          style: FontManager.poppinsBold.copyWith(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(height: 5),
            Container(
              // color: Colors.orange,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,/
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '${listInfo[productId].prodcut_price - (listInfo[productId].prodcut_price * listInfo[productId].product_discount) / 100}',
                        style: FontManager.poppinsBold.copyWith(
                          color: ColorManager.primaryRed,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 5),
                      if (listInfo[productId].product_discount != 0)
                        Text(
                          '${listInfo[productId].prodcut_price} \$',
                          style: FontManager.poppinsMedium.copyWith(
                            color: Colors.black.withOpacity(.6),
                            fontSize: 12,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Colors.black.withOpacity(.8),
                            // decorationStyle: TextDecorationStyle.,
                            decorationThickness: 1.2,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    height: MediaQueryManager(context).height / 20,
                    child: Text(
                      listInfo[productId].product_name.length > 35
                          ? listInfo[productId].product_name.substring(0, 36) +
                              '... '
                          : listInfo[productId].product_name,
                      style: FontManager.heeboRegular,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: List.generate(5, (index) {
                          if (index < listInfo[productId].product_stars)
                            return SvgPicture.asset(
                              ImageManager.iconStar,
                              // color: Colors.,
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
                      const SizedBox(width: 10),
                      Text('${listInfo[productId].prdocut_comment}')
                    ],
                  ),
                  const SizedBox(height: 10),
                  InkWell(
                    customBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    onTap: () {
                      print('object');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      // width: MediaQueryManager(context).width / 4,
                      height: MediaQueryManager(context).height / 20,

                      // margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: ColorManager.shadow.withOpacity(.6),
                          width: 1.2,
                        ),
                      ),
                      child: Text(
                        'Add To Card',
                        style: FontManager.heeboRegular.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
