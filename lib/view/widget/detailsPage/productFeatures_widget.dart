import 'package:flutter/material.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/constants/media_query.dart';
import 'package:hypermart/core/model/home/product_model.dart';

class ProductFeaturesWidget extends StatefulWidget {
  List<ProductModel> listInfo;
  int productId;
  ProductFeaturesWidget(
      {required this.listInfo, required this.productId, Key? key});

  @override
  State<ProductFeaturesWidget> createState() => _ProductFeaturesWidgetState();
}

class _ProductFeaturesWidgetState extends State<ProductFeaturesWidget> {
  bool showMore = true;
  var onlyKey;
  var onlyValues;
  @override
  void initState() {
    // print(
    //     '=========== ${widget.listInfo[widget.productId].product_ifeatures!.length}');
    onlyKey = (widget.listInfo[widget.productId].product_ifeatures as Map)
        .entries
        .toList();
    onlyValues = (widget.listInfo[widget.productId].product_ifeatures as Map)
        .values
        .toList();
    // TODO: implement initState
    super.initState();
  }

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
                  : widget.listInfo[widget.productId].product_ifeatures!.length,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQueryManager(context).width / 4.4,
                        child: Text(
                          '${onlyKey[index].key} : ',
                          style: FontManager.boldStyle.copyWith(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      SizedBox(
                        // color: Colors.red,
                        width: MediaQueryManager(context).width / 4.4,
                        child: Text(
                          '${onlyValues[index]} ',
                          style: FontManager.poppinsBold.copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ]),
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
