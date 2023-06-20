import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:hypermart/core/constants/approute_manager.dart';
import 'package:hypermart/core/constants/auth_exceptions_message.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/verification_mode.dart';
import 'package:hypermart/core/data/auth/confirmation_data.dart';
import 'package:hypermart/core/functions/snackbar_message.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hypermart/core/functions/toast_message.dart';

abstract class VerificationController extends GetxController {
  successVerification();
  getVerificationCode(code);
  startTimeout();
  sendVerificationCode();
}

class VerificationControllerImp extends VerificationController {
  late String verificationCode;
  final interval = const Duration(seconds: 1);
  late Timer timer;
  int timerMaxSeconds = 60;
  int currentSeconds = 0;
  late String sendedEmail;
  late VerificationMode verificationMode;
  String get timerText =>
      '${((timerMaxSeconds - currentSeconds) ~/ 60).toString().padLeft(2, '0')} : ${((timerMaxSeconds - currentSeconds) % 60).toString().padLeft(2, '0')}';

  @override
  void onInit() {
    print('=========== ${Get.arguments['verification_mode']}');
    startTimeout();
    verificationMode = Get.arguments['verification_mode'];
    sendedEmail = '${Get.arguments['email_address']}';
    verificationCode = '00000';
    super.onInit();
  }

  @override
  void dispose() {
    verificationMode = VerificationMode.none;
    sendedEmail = '';
    timer.cancel();
    super.dispose();
  }

  @override
  successVerification() {
    // TODO: implement successVerification
    throw UnimplementedError();
  }

  @override
  getVerificationCode(code) async {
    verificationCode = code;
    update();
    var response = await ConfirmationData()
        .call(userEmail: sendedEmail, userVerifyCode: verificationCode);
    print('new code  $verificationCode');
    if (response['STATUS'] == 'SUCCESSFUL') {
      if (verificationMode == VerificationMode.newAccount) {
        Get.offNamed(AppRouteManager.login);
        snackBarMessage(
          title: 'warning',
          message: 'The account has been activated successfully',
          snackPosition: SnackPosition.TOP,
        );
      } else {
        Get.offNamed(AppRouteManager.resetPassword, arguments: {
          'email_address': sendedEmail,
        });
        snackBarMessage(
          title: 'warning',
          message: 'The email has been verified',
          snackPosition: SnackPosition.TOP,
        );
      }
    } else {
      authExeptionMessage(response['STATUS']);
    }
  }

  @override
  startTimeout() {
    var duration = interval;
    timer = Timer.periodic(duration, (timer) {
      // print(timer.tick);
      currentSeconds = timer.tick;
      update();
      if (timer.tick >= timerMaxSeconds) timer.cancel();
    });
  }

  @override
  sendVerificationCode() async {
    await ToastMessage(message: 'sent succesfully');
    timerMaxSeconds = 60;
    currentSeconds = 0;
    startTimeout();
    update();
  }
}
