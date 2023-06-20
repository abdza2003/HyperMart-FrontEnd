import 'package:get/get.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/functions/snackbar_message.dart';

authExeptionMessage(String getStatusMessage) {
  if (getStatusMessage.toString().contains('INVALID_INPUT')) {
    getStatusMessage = 'invalid input .';
  } else if (getStatusMessage.toString().contains('EMAIL_EXISTS')) {
    getStatusMessage = 'This email address is already in use.';
  } else if (getStatusMessage == 'INVALID_EMAIL') {
    getStatusMessage = 'This is not a valid email address';
  } else if (getStatusMessage.toString().contains('WEAK_PASSWORD')) {
    getStatusMessage = 'This password is too weak.';
  } else if (getStatusMessage.toString().contains('NOT_FOUND_EMAIL')) {
    getStatusMessage = 'Could not find a email.';
  } else if (getStatusMessage.toString().contains('INVALID_PASSWORD')) {
    getStatusMessage = 'Invalid password.';
  } else if (getStatusMessage.toString().contains('NOT_MATCH_PASSWORD')) {
    getStatusMessage = 'password does not match. ';
  } else if (getStatusMessage.toString().contains('SEND_VERIFYCODE')) {
    getStatusMessage = 'Please confirm your email. ';
  } else if (getStatusMessage
      .toString()
      .contains('FAILURE_CONFIRMATION_CODE')) {
    getStatusMessage = 'Invalid entry, please try again. ';
  } else if (getStatusMessage.toString().contains('NOT_AVAILAVLE')) {
    getStatusMessage = 'This email is not available. ';
  }

  snackBarMessage(
    color: ColorManager.error,
    title: 'warning',
    message: getStatusMessage,
    snackPosition: SnackPosition.TOP,
  );
}
