import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingServices extends GetxService {
  late SharedPreferences sharedPreferences;
  Future<SettingServices> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }

  Future initailServices() async {
    await Get.putAsync(() => SettingServices().init());
  }
}

SettingServices services = Get.find();
