import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hypermart/core/constants/font_manager.dart';

class HeadTextWidget extends StatelessWidget {
  String headText;
  HeadTextWidget({required this.headText, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$headText',
      style: FontManager.boldStyle.copyWith(
        fontSize: 20,
      ),
    );
  }
}
