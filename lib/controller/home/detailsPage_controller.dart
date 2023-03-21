import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypermart/controller/home/homePage_controller.dart';

class DetailsPageControllerImp extends HomePageControllerImp {
  late int imageViewIndex;
  late bool showFavoriteButton;

  @override
  void onInit() {
    scrollController = ScrollController();
    showFavoriteButton = false;

    imageViewIndex = 0;
    super.onInit();
  }

  changeImageViewIndex(index) {
    imageViewIndex = index;
    update();
  }
}
