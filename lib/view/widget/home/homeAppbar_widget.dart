import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypermart/controller/home/homePage_controller.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/functions/hex_color.dart';
import 'package:hypermart/view/screen/home/profile_screen.dart';
import 'package:hypermart/view/widget/else/logo_widget.dart';
import 'package:hypermart/view/widget/home/seartchTextFaild_widget.dart';
import 'package:page_transition/page_transition.dart';

class HomeAppbarWidget extends StatelessWidget {
  const HomeAppbarWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageControllerImp>(builder: (homePageControllerImp) {
      return Card(
        elevation: homePageControllerImp.showSearchText ? 5 : 0,
        shadowColor: Colors.white,
        margin: const EdgeInsets.all(0),
        child: AnimatedContainer(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
          // clipBehavior: Clip.hardEdge,
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 400),
          height: homePageControllerImp.showSearchText ? 130 : 60,
          color: HexColor('#fafafa'),
          // color: Colors.red,
          child: ListView(
            children: [
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LogoWidget(imageSize: 20, imageSize2: 30),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          duration: const Duration(milliseconds: 400),
                          type: PageTransitionType.bottomToTop,
                          child: const ProfileScreen(),
                        ),
                      );
                    },
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: ColorManager.primaryRed,
                      child: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Visibility(
                visible: homePageControllerImp.showSearchText ? true : false,
                maintainAnimation: true,
                maintainState: true,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.fastOutSlowIn,
                  opacity: homePageControllerImp.showSearchText ? 1 : 0,
                  child: SeartchTextFaildWidget(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
