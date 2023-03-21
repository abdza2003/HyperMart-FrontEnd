import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  IconButtonWidget({required this.iconData, required this.func, Key? key})
      : super(key: key);
  IconData iconData;
  var func;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: IconButton(
        onPressed: func,
        icon: Icon(iconData),
      ),
    );
  }
}
