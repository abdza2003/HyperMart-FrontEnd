import 'package:flutter/material.dart';
import 'package:get/get.dart';

SnackBarMessage({
  required String title,
  required String message,
  Color? color,
  SnackPosition? snackPosition,
}) {
  return Get.snackbar(
    title,
    message,
    backgroundColor: color ?? Colors.green,
    borderRadius: 10,
    icon: const Icon(
      Icons.check_circle,
      color: Colors.white,
    ),
    colorText: Colors.white,
    padding: const EdgeInsets.all(25),
    margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
    snackPosition: snackPosition ?? SnackPosition.BOTTOM,
  );
}
