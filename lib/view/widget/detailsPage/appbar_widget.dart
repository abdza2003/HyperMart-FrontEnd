import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypermart/controller/home/detailsPage_controller.dart';
import 'package:hypermart/core/constants/media_query.dart';
import 'package:hypermart/view/widget/home/iconButton_widget.dart';
import 'package:hypermart/view/widget/home/seartchTextFaild_widget.dart';

class AppbarWidegt extends StatelessWidget {
  const AppbarWidegt({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailsPageControllerImp>(builder: (controller) {
      return SafeArea(
        child: Card(
          margin: const EdgeInsets.all(0),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          // width: 200,
          // height: 100,
          elevation: 5,
          child: Container(
            margin: const EdgeInsets.all(10),
            // color: Colors.red,
            child: Row(
              children: [
                IconButtonWidget(
                    iconData: Icons.arrow_back_outlined,
                    func: () {
                      Get.back();
                    }),
                Expanded(
                    flex: controller.showFavoriteButton ? 4 : 6,
                    child: SeartchTextFaildWidget(size: 10)),
                IconButtonWidget(
                    iconData: Icons.shopping_cart_outlined, func: () {}),
                IconButtonWidget(iconData: Icons.share_outlined, func: () {}),
                Visibility(
                  visible: controller.showFavoriteButton,
                  child: IconButtonWidget(
                      iconData: Icons.favorite_border_outlined, func: () {}),
                ),
                // IconButtonWidget(iconData: Icons.share, func: () {}),
              ],
            ),
          ),
        ),
      );
    });
  }
}
