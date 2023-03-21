import 'package:hypermart/core/constants/approute_manager.dart';
import 'package:hypermart/core/data/onboarding_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hypermart/view/screen/auth/login_screen.dart';

abstract class OnboardingController extends GetxController {
  next();
  skip();
  onPageChange(int pageIndex);
}

class OnboardingControllerImp extends OnboardingController {
  late PageController pageController;
  int currentPage = 0;
  @override
  next() {
    if (currentPage < OnboardingData.onboardingInfo.length - 1) {
      currentPage++;
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
      update();
    } else {
      Get.to(() => LoginScreen());
    }
    update();
  }

  @override
  onPageChange(int pageIndex) {
    currentPage = pageIndex;
    update();
  }

  @override
  skip() {
    Get.toNamed(AppRouteManager.login);
  }

  @override
  void onInit() {
    pageController = PageController();

    super.onInit();
  }
}
