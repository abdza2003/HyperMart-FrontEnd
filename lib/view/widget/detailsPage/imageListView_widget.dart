import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypermart/controller/home/detailsPage_controller.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/image_manager.dart';
import 'package:hypermart/core/constants/media_query.dart';
import 'package:hypermart/core/functions/check_image.dart';
import 'package:hypermart/core/model/home/product_model.dart';

class ImageListView extends StatefulWidget {
  List<ProductModel> listInfo;
  int productId;
  ImageListView({required this.listInfo, required this.productId, Key? key})
      : super(key: key);

  @override
  State<ImageListView> createState() => _ImageListViewState();
}

class _ImageListViewState extends State<ImageListView> {
  bool isClisck = false;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailsPageControllerImp>(builder: (controller) {
      return SizedBox(
        height: MediaQueryManager(context).height / 1.5,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                PageView.builder(
                    physics: const BouncingScrollPhysics(),
                    onPageChanged: (val) {
                      controller.changeImageViewIndex(val);
                    },
                    itemCount:
                        widget.listInfo[widget.productId].prdocut_images.length,
                    pageSnapping: true,
                    itemBuilder: (context, index) {
                      return checkImage(
                          imageUrl: widget
                              .listInfo[widget.productId].prdocut_images[index],
                          logoSize: 25,
                          logoSize2: 45);
                    }),
                Container(
                  margin: EdgeInsets.only(
                    bottom: 30,
                  ),
                  width: (widget
                          .listInfo[widget.productId].prdocut_images.length) *
                      25,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorManager.shadow.withOpacity(.65),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      widget.listInfo[widget.productId].prdocut_images.length,
                      (index) => Container(
                        padding: const EdgeInsets.all(5),
                        child: CircleAvatar(
                          radius: controller.imageViewIndex == index ? 6 : 3,
                          backgroundColor: controller.imageViewIndex == index
                              ? ColorManager.primaryRed
                              : Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            !controller.showFavoriteButton
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        isClisck = !isClisck;
                      });
                    },
                    child: Card(
                      margin: EdgeInsets.only(
                        right: 20,
                        top: 25,
                      ),
                      color: ColorManager.textFaild,
                      elevation: 10,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          // color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          isClisck
                              ? Icons.favorite
                              : Icons.favorite_border_outlined,
                          color: isClisck ? Colors.red : Colors.black,
                        ),
                      ),
                    ),
                  )
                : SizedBox(),
          ],
        ),
      );
    });
  }
}
