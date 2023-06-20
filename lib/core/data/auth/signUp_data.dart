import 'package:dartz/dartz.dart';
import 'package:hypermart/core/class/crud.dart';
import 'package:hypermart/core/constants/api_manager.dart';
import 'package:hypermart/core/constants/status_request.dart';

class SignUpData {
  Future<dynamic> call(
      {required String userName,
      required String password,
      required String userEmail}) async {
    Map<String, dynamic> data = <String, dynamic>{};
    data['user_email'] = userEmail;
    data['user_password'] = password;
    data['user_name'] = userName;
    var response = await Crud().postData(
      uri: ApiManager.signUp,
      body: data,
    );
    return response.fold((l) => l, (r) => r);
  }
}
