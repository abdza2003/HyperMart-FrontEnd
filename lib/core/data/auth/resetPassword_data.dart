import 'package:dartz/dartz.dart';
import 'package:hypermart/core/class/crud.dart';
import 'package:hypermart/core/constants/api_manager.dart';
import 'package:hypermart/core/constants/status_request.dart';

class ResetPasswordData {
  Future<dynamic> call(
      {required String userEmail,
      required String password,
      required String confirmPaasword}) async {
    Map<String, dynamic> data = <String, dynamic>{};
    data['user_email'] = userEmail;
    data['user_password'] = password;
    data['confirm_user_password'] = confirmPaasword;
    var response = await Crud().postData(
      uri: ApiManager.resetPassword,
      body: data,
    );
    return response.fold((l) => l, (r) => r);
  }
}
