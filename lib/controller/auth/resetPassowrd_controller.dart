import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypermart/core/constants/approute_manager.dart';
import 'package:hypermart/core/constants/auth_exceptions_message.dart';
import 'package:hypermart/core/data/auth/resetPassword_data.dart';
import 'package:hypermart/core/functions/snackbar_message.dart';

abstract class ResetPasswordController extends GetxController {
  login();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController newPassword;
  late TextEditingController confirmPassword;
  late String sendedEmail;

  @override
  void onInit() {
    newPassword = TextEditingController();
    confirmPassword = TextEditingController();
    sendedEmail = '${Get.arguments['email_address']}';
    super.onInit();
  }

  @override
  void dispose() {
    newPassword.dispose();
    confirmPassword.dispose();
    super.dispose();
  }

  @override
  login() async {
    print('==============${sendedEmail}');
    print('==============${confirmPassword.text}');
    print('==============${newPassword.text}');
    var response = await ResetPasswordData().call(
      userEmail: sendedEmail,
      confirmPaasword: confirmPassword.text,
      password: newPassword.text,
    );
    print('=============${response}');
    if (response['STATUS'] == 'SUCCESSFUL') {
      Get.offAllNamed(AppRouteManager.login);
      snackBarMessage(
        title: 'warning',
        message: 'Password changed successfully',
        snackPosition: SnackPosition.TOP,
      );
    } else {
      authExeptionMessage(response['STATUS']);
    }
  }
}
