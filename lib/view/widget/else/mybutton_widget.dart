import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/constants/media_query.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyButtonWiget extends StatelessWidget {
  var func;
  String buttonTitle;

  MyButtonWiget({required this.func, required this.buttonTitle, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(
            MediaQueryManager(context).width / 2.6,
            MediaQueryManager(context).height / 13,
          ),
        ),
        onPressed: func,
        child: Text(
          '${buttonTitle}',
          style: FontManager.boldStyle.copyWith(color: Colors.white),
        ));
  }
}
