import 'package:hypermart/app/main_app.dart';
import 'package:flutter/material.dart';
import 'package:hypermart/core/service/setting_services.dart';

void main() async {
  await SettingServices().initailServices();
  runApp(MainApp());
}
//*  
// !
// TODO: 
// ?
