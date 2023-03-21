import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/constants/image_manager.dart';
import 'package:hypermart/core/constants/media_query.dart';
import 'package:hypermart/core/data/profile_data.dart';
import 'package:hypermart/view/widget/profilePage/profileAccountInfo_widget.dart';
import 'package:hypermart/view/widget/profilePage/profileLogout_widget.dart';
import 'package:hypermart/view/widget/profilePage/profileMainInfo_widget.dart';
import 'package:hypermart/view/widget/profilePage/profileOrderInfo_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorManager.primaryRed,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.close_outlined,
            size: 30,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'My Account',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_outlined,
              size: 30,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 75,
            color: ColorManager.primaryRed,
          ),
          ListView(
            // physics: BouncingScrollPhysics(),
            children: [
              const ProfileMainInfo(),
              const SizedBox(height: 5),
              const ProfileOrderInfo(),
              const SizedBox(height: 5),
              const ProfileAccountInfo(),
              const ProfileLogOutWidget(),
            ],
          ),
        ],
      ),
    );
  }
}
