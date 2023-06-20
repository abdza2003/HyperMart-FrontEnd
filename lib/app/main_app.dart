import 'package:hypermart/core/constants/approute_manager.dart';
import 'package:hypermart/core/data/page_data.dart';
import 'package:hypermart/core/theme/theme_manager.dart';
import 'package:hypermart/core/service/binding_services.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hypermart/view/screen/auth/login_screen.dart';
import 'package:hypermart/view/screen/auth/resetpassword_screen.dart';

class MainApp extends StatelessWidget {
  MainApp._internal();
  static final MainApp _instance = MainApp._internal();
  factory MainApp() => _instance;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.lightTheme,
      // home: LoginScreen(),
      initialBinding: AuthenticationBinding(),
      initialRoute: AppRouteManager.onboarding,
      getPages: PageData().getPages,
    );
  }
}
