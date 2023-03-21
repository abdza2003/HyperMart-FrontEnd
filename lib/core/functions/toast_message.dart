import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

ToastMessage({required String message}) {
  return Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      textColor: Colors.white,
      backgroundColor: Colors.grey,
      fontSize: 16.0);
}
