import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension MediaQueryManager on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.height;
}
