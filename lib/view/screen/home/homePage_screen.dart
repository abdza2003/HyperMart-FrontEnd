import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:hypermart/controller/home/homePage_controller.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/constants/image_manager.dart';
import 'package:hypermart/core/constants/media_query.dart';
import 'package:hypermart/core/data/category_data.dart';
import 'package:hypermart/core/functions/hex_color.dart';
import 'package:hypermart/view/widget/home/allFeatures_widget.dart';
import 'package:hypermart/view/widget/home/bannerDiscout_widget.dart';
import 'package:hypermart/view/widget/home/banner_widget.dart';
import 'package:hypermart/view/widget/home/categoriesList_widget.dart';
import 'package:hypermart/view/widget/home/categories_widget.dart';
import 'package:hypermart/view/widget/home/getproduct_widget.dart';
import 'package:hypermart/view/widget/home/headText_widget.dart';
import 'package:hypermart/view/widget/home/homeAppbar_widget.dart';
import 'package:hypermart/view/widget/home/newFeatures_widget.dart';
import 'package:hypermart/view/widget/home/productDetails_widget.dart';
import 'package:hypermart/view/widget/home/seartchTextFaild_widget.dart';
import 'package:hypermart/view/widget/else/logo_widget.dart';
import 'package:hypermart/view/widget/home/address_widget.dart';

class HomePageScreen extends StatefulWidget {
  HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  HomePageControllerImp homePageControllerImp = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
                child: ListView(
                  controller: homePageControllerImp.scrollController,
                  physics: const BouncingScrollPhysics(),
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const AddressWidget(),
                    const SizedBox(height: 10),
                    SeartchTextFaildWidget(
                      color: Colors.white,
                    ),
                    const SizedBox(height: 10),
                    const BannerWidget(),
                    const SizedBox(height: 10),
                    const CategoriesListWidget(),
                    const SizedBox(height: 10),
                    const AllFeaturesWidget(),
                    const SizedBox(height: 10),
                    HeadTextWidget(headText: 'Special suggestions for you'),
                    const SizedBox(height: 10),
                    GetProductWidget(
                        listInfo: homePageControllerImp.normalProdcut),
                    const SizedBox(height: 10),
                    const BannerDiscoutWidget(),
                    const SizedBox(height: 10),
                    HeadTextWidget(headText: 'Special discounts'),
                    const SizedBox(height: 10),
                    GetProductWidget(
                        listInfo: homePageControllerImp.discountProduct)
                  ],
                ),
              ),
              const HomeAppbarWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
