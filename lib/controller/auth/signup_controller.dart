import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypermart/core/constants/approute_manager.dart';
import 'package:hypermart/core/constants/auth_exceptions_message.dart';
import 'package:hypermart/core/constants/handlign_data.dart';
import 'package:hypermart/core/constants/status_request.dart';
import 'package:hypermart/core/constants/verification_mode.dart';
import 'package:hypermart/core/data/auth/login_data.dart';
import 'package:hypermart/core/data/auth/signUp_data.dart';
import 'package:hypermart/core/functions/snackbar_message.dart';
import 'package:hypermart/view/screen/auth/login_screen.dart';
import 'package:page_transition/page_transition.dart';

abstract class SignUpController extends GetxController {
  submit();
  login(context);
}

class SignUpControllerImp extends SignUpController {
  late TextEditingController emailAddress;
  late TextEditingController userName;
  late TextEditingController password;
  late TextEditingController phoneNumber;
  late StatusRequest statusRequest;
  @override
  void onInit() {
    statusRequest = StatusRequest.none;
    emailAddress = TextEditingController();
    userName = TextEditingController();
    phoneNumber = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailAddress.dispose();
    phoneNumber.dispose();
    password.dispose();
    userName.dispose();
    super.dispose();
  }

  clear() {
    emailAddress.clear();
    phoneNumber.clear();
    password.clear();
    userName.clear();
  }

  @override
  submit() async {
    var response = await SignUpData().call(
      userName: userName.text,
      password: password.text,
      userEmail: emailAddress.text,
    );
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['STATUS'] == 'SUCCESSFUL') {
        Get.toNamed(AppRouteManager.verification, arguments: {
          'email_address': emailAddress.text,
          'verification_mode': VerificationMode.newAccount,
        });
        snackBarMessage(
          title: 'warning',
          message: 'Please confirm your email. ',
          snackPosition: SnackPosition.TOP,
        );
      } else {
        authExeptionMessage(response['STATUS']);
      }
    }
  }

  @override
  login(context) {
    Navigator.pushAndRemoveUntil(
      context,
      PageTransition(
        duration: const Duration(milliseconds: 400),
        type: PageTransitionType.bottomToTop,
        child: LoginScreen(),
      ),
      (route) => false,
    );
    clear();
  }
}
