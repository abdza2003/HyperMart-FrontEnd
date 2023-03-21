import 'package:flutter/material.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/model/home/product_model.dart';

class CommentAnalysisWidget extends StatelessWidget {
  List<ProductModel> listInfo;
  int productId;
  CommentAnalysisWidget(
      {required this.listInfo, required this.productId, Key? key});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(
                        text: '${listInfo[productId].product_stars}',
                        style: FontManager.poppinsBold.copyWith(
                          fontSize: 40,
                          color: Colors.black45,
                        ),
                        children: [
                      TextSpan(
                        text: ' / 5',
                        style: FontManager.poppinsBold.copyWith(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      )
                    ])),
                Text(
                  'Based on ${listInfo[productId].prdocut_comment} Review',
                  style: FontManager.boldStyle.copyWith(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Column(
                children: List.generate(
              5,
              (index) => Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${5 - index}',
                      style: FontManager.poppinsBold.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Stack(
                      children: [
                        Container(
                          width: 100,
                          height: 10,
                          decoration: BoxDecoration(
                            color: ColorManager.fontGray,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Container(
                          width: index == 1
                              ? 20
                              : index == 2
                                  ? 60
                                  : index == 0
                                      ? 80
                                      : index == 3
                                          ? 10
                                          : 60,
                          height: 10,
                          decoration: BoxDecoration(
                            color: ColorManager.primaryRed,
                            // color: ColorManager.fontGray,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
