import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hypermart/core/constants/approute_manager.dart';
import 'package:hypermart/core/service/setting_services.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (services.sharedPreferences.getInt('auth') != null) {
      return RouteSettings(name: AppRouteManager.homePage);
    }
  }
}
