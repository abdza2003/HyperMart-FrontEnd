import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hypermart/controller/home/detailsPage_controller.dart';
import 'package:hypermart/controller/home/homePage_controller.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/constants/image_manager.dart';
import 'package:hypermart/core/constants/media_query.dart';
import 'package:hypermart/core/model/home/product_model.dart';
import 'package:hypermart/view/widget/detailsPage/appbar_widget.dart';
import 'package:hypermart/view/widget/detailsPage/bodyText_widget.dart';
import 'package:hypermart/view/widget/detailsPage/commentAnalysis_widget.dart';
import 'package:hypermart/view/widget/detailsPage/commentBody_widget.dart';
import 'package:hypermart/view/widget/detailsPage/imageListView_widget.dart';
import 'package:hypermart/view/widget/detailsPage/productFeatures_widget.dart';
import 'package:hypermart/view/widget/detailsPage/productInformation_widget.dart';
import 'package:hypermart/view/widget/else/mybutton_widget.dart';
import 'package:hypermart/view/widget/home/getproduct_widget.dart';
import 'package:hypermart/view/widget/home/headText_widget.dart';
import 'package:hypermart/view/widget/home/seartchTextFaild_widget.dart';
import 'package:hypermart/view/widget/detailsPage/bottomBar_widget.dart';

import '../../widget/home/iconButton_widget.dart';

class DetailsScreen extends StatefulWidget {
  List<ProductModel> listInfo;
  int productId;

  DetailsScreen({required this.listInfo, required this.productId, Key? key})
      : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  HomePageControllerImp homePageControllerImp = Get.find();
  DetailsPageControllerImp detailsPageControllerImp = Get.find();
  late ScrollController scrollController = new ScrollController();
  @override
  void initState() {
    scrollController.addListener(scroll);
    super.initState();
  }

  @override
  void dispose() {
    print('asdas sad');
    // scrollController.offset. = 0.0;
    scrollController
      ..removeListener(scroll)
      ..dispose();
    super.dispose();
  }

  @override
  scroll() {
    final currentScroll = scrollController.offset;
    if (currentScroll >= 110) {
      detailsPageControllerImp.showFavoriteButton = true;
      setState(() {});
    } else {
      detailsPageControllerImp.showFavoriteButton = false;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomBarWidget(
            listInfo: widget.listInfo, productId: widget.productId),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(MediaQueryManager(context).height / 5),
          child: AppbarWidegt(),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: ListView(
            primary: false,
            controller: scrollController,
            // physics: BouncingScrollPhysics(),
            children: [
              ImageListView(
                listInfo: widget.listInfo,
                productId: widget.productId,
              ),
              const SizedBox(
                width: double.infinity,
                child: Divider(
                  color: Colors.black45,
                  thickness: .2,
                ),
              ),
              BodyTextWidget(
                listInfo: widget.listInfo,
                productId: widget.productId,
              ),
              ProductInfoWidget(
                listInfo: widget.listInfo,
                productId: widget.productId,
              ),
              const SizedBox(height: 20),
              CommentAnalysisWidget(
                listInfo: widget.listInfo,
                productId: widget.productId,
              ),
              const SizedBox(height: 20),
              ProductFeaturesWidget(
                listInfo: widget.listInfo,
                productId: widget.productId,
              ),
              const SizedBox(height: 20),
              const CommentBodyWidget(),
              const SizedBox(height: 10),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: HeadTextWidget(headText: 'similar products')),
              GetProductWidget(
                listInfo: homePageControllerImp.normalProdcut,
              ),
              const SizedBox(height: 10),
            ],
          ),
        ));
  }
}
