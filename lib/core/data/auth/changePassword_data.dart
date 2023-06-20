import 'package:dartz/dartz.dart';
import 'package:hypermart/core/class/crud.dart';
import 'package:hypermart/core/constants/api_manager.dart';
import 'package:hypermart/core/constants/status_request.dart';

class LoginData {
  Future<dynamic> call(
      {required String userEmail, required String password}) async {
    Map<String, dynamic> data = <String, dynamic>{};
    data['user_email'] = userEmail;
    data['user_password'] = password;
    var response = await Crud().postData(
      uri: ApiManager.login,
      body: data,
    );
    return response.fold((l) => l, (r) => r);
  }
}
