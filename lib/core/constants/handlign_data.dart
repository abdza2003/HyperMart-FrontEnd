import 'package:hypermart/core/constants/status_request.dart';

handlingData(statusRequest) {
  if (statusRequest is StatusRequest) {
    return statusRequest;
  } else {
    return StatusRequest.success;
  }
}
