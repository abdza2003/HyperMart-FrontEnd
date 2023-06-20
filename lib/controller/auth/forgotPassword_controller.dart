import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypermart/core/constants/approute_manager.dart';
import 'package:hypermart/core/constants/auth_exceptions_message.dart';
import 'package:hypermart/core/constants/verification_mode.dart';
import 'package:hypermart/core/data/auth/searthemailaddress_data.dart';
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
  verification() async {
    var response =
        await SeartchEmailAddressData().call(userEmail: emailAddress.text);
    if (response['STATUS'] == 'SUCCESSFUL') {
      snackBarMessage(
        title: 'warning',
        message: 'The code has been sent successfully',
        snackPosition: SnackPosition.TOP,
      );
      Get.toNamed(AppRouteManager.verification, arguments: {
        'email_address': '${emailAddress.text}',
        'verification_mode': VerificationMode.resetPaasword,
      });
    } else {
      authExeptionMessage(response['STATUS']);
    }
  }
}
