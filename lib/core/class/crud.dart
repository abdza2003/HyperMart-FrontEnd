import 'dart:convert';
import 'dart:io';

import 'package:hypermart/core/constants/status_request.dart';
import 'package:hypermart/core/functions/check_internet.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';
import 'package:retrofit/http.dart';

class Crud {
  Future<Either<StatusRequest, dynamic>> postData(
      {required String uri, required Map body}) async {
    try {
      if (await checkInternet()) {
        http.Response response = await http.post(Uri.parse(uri), body: body);
        if (response.statusCode == 200 || response.statusCode == 201) {
          var resBody = jsonDecode(
            response.body,
          );
          return Right(resBody);
          //todo: success
        } else {
          return const Left(StatusRequest.failure);
          //todo: error server
        }
      } else {
        return const Left(StatusRequest.offline);
        //! Internet is not connected
      }
    } on Exception catch (_) {
      return const Left(StatusRequest.failure);
      // todo: error server
    }
  }

  Future<Either<StatusRequest, dynamic>> getData({required String uri}) async {
    try {
      if (await checkInternet()) {
        http.Response response = await http.get(Uri.parse(uri), headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        });
        if (response.statusCode == 200 || response.statusCode == 201) {
          var resBody = jsonDecode(response.body);
          return Right(resBody);
          //todo: success
        } else {
          return const Left(StatusRequest.failure);
          //todo: error server
        }
      } else {
        return const Left(StatusRequest.offline);
        //! Internet is not connected
      }
    } on Exception catch (_) {
      return const Left(StatusRequest.failure);
      // todo: error server
    }
  }
}
