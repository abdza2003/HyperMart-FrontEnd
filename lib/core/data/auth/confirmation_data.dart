import 'package:dartz/dartz.dart';
import 'package:hypermart/core/class/crud.dart';
import 'package:hypermart/core/constants/api_manager.dart';
import 'package:hypermart/core/constants/status_request.dart';

class ConfirmationData {
  Future<dynamic> call(
      {required String userEmail, required String userVerifyCode}) async {
    Map<String, dynamic> data = <String, dynamic>{};
    data['user_email'] = userEmail;
    data['user_verifycode'] = userVerifyCode;
    var response = await Crud().postData(
      uri: ApiManager.confirmation,
      body: data,
    );
    return response.fold((l) => l, (r) => r);
  }
}
