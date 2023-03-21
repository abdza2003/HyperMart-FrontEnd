import 'package:flutter/material.dart';
import 'package:hypermart/core/constants/media_query.dart';
import 'package:hypermart/core/model/home/product_model.dart';
import 'package:hypermart/view/widget/home/productDetails_widget.dart';

class GetProductWidget extends StatelessWidget {
  List<ProductModel> listInfo;
  GetProductWidget({required this.listInfo, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQueryManager(context).height / 2.3,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 0),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: listInfo.length,
        itemBuilder: (context, index) => ProductDetailsWidget(
          productId: listInfo[index].prodcut_id,
          listInfo: listInfo,
        ),
      ),
    );
  }
}
