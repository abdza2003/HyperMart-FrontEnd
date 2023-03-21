import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypermart/core/constants/approute_manager.dart';
import 'package:hypermart/view/screen/auth/login_screen.dart';
import 'package:hypermart/view/screen/auth/signup_screen.dart';
import 'package:hypermart/view/screen/home/homePage_screen.dart';
import 'package:page_transition/page_transition.dart';

abstract class LoginController extends GetxController {
  submit();
  signUp(context);
  forgetPassword();
}

class LoginControllerImp extends LoginController {
  late TextEditingController emailAddress;
  late TextEditingController password;
  @override
  void onInit() {
    emailAddress = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailAddress.dispose();
    password.dispose();
    super.dispose();
  }

  clear() {
    emailAddress.clear();
    password.clear();
  }

  @override
  submit() {
    print('-------------------------------');
    print('email : ${emailAddress.text}');
    print('password : ${password.text}');
    Get.offAllNamed(AppRouteManager.homePage);
  }

  @override
  signUp(context) {
    Navigator.push(
      context,
      PageTransition(
        duration: const Duration(milliseconds: 400),
        type: PageTransitionType.bottomToTop,
        child: SignUpScreen(),
      ),
    );
    clear();
  }

  @override
  forgetPassword() {
    Get.toNamed(AppRouteManager.forgotPassword);
    clear();
  }
}
