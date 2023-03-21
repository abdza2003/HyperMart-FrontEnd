import 'package:flutter/material.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/model/home/product_model.dart';

class ProductInfoWidget extends StatefulWidget {
  List<ProductModel> listInfo;
  int productId;
  ProductInfoWidget(
      {required this.listInfo, required this.productId, Key? key});

  @override
  State<ProductInfoWidget> createState() => _ProductInfoWidgetState();
}

class _ProductInfoWidgetState extends State<ProductInfoWidget> {
  bool showMore = true;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        // height: 60,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Product information',
              style: FontManager.boldStyle.copyWith(fontSize: 18),
            ),
            SizedBox(
              width: 500,
              child: Divider(
                color: ColorManager.fontGray,
                thickness: .4,
              ),
            ),
            ...List.generate(
              showMore
                  ? 2
                  : widget
                      .listInfo[widget.productId].product_information.length,
              (index) => Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 4,
                      backgroundColor: ColorManager.primaryRed,
                    ),
                    const SizedBox(width: 10),
                    Container(
                      // color: Colors.red,
                      width: 360,
                      child: Text(
                        widget.listInfo[widget.productId]
                            .product_information[index],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Divider(
                color: ColorManager.fontGray,
                thickness: .4,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  showMore = !showMore;
                });
              },
              child: Container(
                // height: 100,
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  showMore ? 'Show More' : 'Show Less',
                  style: FontManager.boldStyle.copyWith(fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
