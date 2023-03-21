import 'package:flutter/services.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyTextFaildWidget extends StatelessWidget {
  String title;
  TextInputType? textInputType;
  TextEditingController? textEditingController;
  int? maxLength;
  MyTextFaildWidget({
    required this.title,
    this.textInputType,
    this.textEditingController,
    this.maxLength,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0),
      child: TextFormField(
        maxLength: maxLength ?? 50,
        controller: textEditingController,
        style: FontManager.smallBoldStyle,
        keyboardType: textInputType ?? TextInputType.name,
        decoration: InputDecoration(
          fillColor: Colors.white70,
          filled: true,
          // counter: SizedBox.shrink(),
          counterText: "",
          hintText: '$title',
        ),
      ),
    );
  }
}
