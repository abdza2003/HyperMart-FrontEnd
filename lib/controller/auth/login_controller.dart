import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypermart/core/constants/approute_manager.dart';
import 'package:hypermart/core/constants/auth_exceptions_message.dart';
import 'package:hypermart/core/constants/handlign_data.dart';
import 'package:hypermart/core/constants/status_request.dart';
import 'package:hypermart/core/constants/verification_mode.dart';
import 'package:hypermart/core/data/auth/login_data.dart';
import 'package:hypermart/core/service/setting_services.dart';
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
  late StatusRequest statusRequest;
  @override
  void onInit() {
    emailAddress = TextEditingController();
    password = TextEditingController();
    statusRequest = StatusRequest.none;
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
  submit() async {
    var response = await LoginData()
        .call(userEmail: emailAddress.text, password: password.text);
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['STATUS'] == 'SUCCESSFUL') {
        services.sharedPreferences.setString('user_information',
            '${response['INFO']['user_name']}|${response['INFO']['user_email']}');
        services.sharedPreferences.setInt('auth', 1);

        Get.offAllNamed(AppRouteManager.homePage);
      } else if (response['STATUS'] == 'SEND_VERIFYCODE') {
        Get.toNamed(AppRouteManager.verification, arguments: {
          'email_address': '${emailAddress.text}',
          'verification_mode': VerificationMode.newAccount,
        });
        authExeptionMessage(response['STATUS']);
      } else {
        authExeptionMessage(response['STATUS']);
      }
    }

    clear();
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
