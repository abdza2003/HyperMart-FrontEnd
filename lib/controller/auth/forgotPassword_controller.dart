import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypermart/core/constants/approute_manager.dart';
import 'package:hypermart/core/constants/verification_mode.dart';
import 'package:hypermart/core/functions/snackbar_message.dart';

abstract class ForgotPasswordController extends GetxController {
  verification();
}

class ForgotPasswordControllerImp extends ForgotPasswordController {
  late TextEditingController emailAddress;
  @override
  void onInit() {
    emailAddress = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailAddress.dispose();
    super.dispose();
  }

  @override
  verification() {
    // if (emailAddress.text.isEmpty) {
    //   return;
    // }
    Get.toNamed(AppRouteManager.verification, arguments: {
      'email_address': '${emailAddress.text}',
      'verification_mode': VerificationMode.resetPaasword,
    });
    SnackBarMessage(
      title: 'warning',
      message: 'The code has been sent successfully',
      snackPosition: SnackPosition.TOP,
    );
  }
}
