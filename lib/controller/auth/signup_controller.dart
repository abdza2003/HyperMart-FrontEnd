import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypermart/core/constants/approute_manager.dart';
import 'package:hypermart/core/constants/verification_mode.dart';
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
  @override
  void onInit() {
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
  submit() {
    Get.toNamed(AppRouteManager.verification, arguments: {
      'email_address': '${emailAddress.text}',
      'verification_mode': VerificationMode.newAccount,
    });
    SnackBarMessage(
      title: 'warning',
      message: 'The code has been sent successfully',
      snackPosition: SnackPosition.TOP,
    );
    print('-------------------------------');
    print('userName : ${userName.text}');
    print('email : ${emailAddress.text}');
    print('password : ${password.text}');
    print('phone : ${phoneNumber.text}');
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
