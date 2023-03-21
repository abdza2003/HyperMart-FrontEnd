import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypermart/core/constants/approute_manager.dart';
import 'package:hypermart/core/functions/snackbar_message.dart';

abstract class ResetPasswordController extends GetxController {
  login();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController newPassword;
  late TextEditingController confirmPassword;

  @override
  void onInit() {
    newPassword = TextEditingController();
    confirmPassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    newPassword.dispose();
    confirmPassword.dispose();
    super.dispose();
  }

  @override
  login() {
    Get.offAllNamed(AppRouteManager.login);
    SnackBarMessage(
      title: 'warning',
      message: 'Password changed successfully',
      snackPosition: SnackPosition.TOP,
    );
  }
}
