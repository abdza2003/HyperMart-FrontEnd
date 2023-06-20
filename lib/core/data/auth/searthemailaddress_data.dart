import 'package:dartz/dartz.dart';
import 'package:hypermart/core/class/crud.dart';
import 'package:hypermart/core/constants/api_manager.dart';
import 'package:hypermart/core/constants/status_request.dart';

class SeartchEmailAddressData {
  Future<dynamic> call({
    required String userEmail,
  }) async {
    Map<String, dynamic> data = <String, dynamic>{};
    data['user_email'] = userEmail;

    var response = await Crud().postData(
      uri: ApiManager.searchEmailAddress,
      body: data,
    );
    return response.fold((l) => l, (r) => r);
  }
}
