import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';

class AddressWidget extends StatelessWidget {
  const AddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: ColorManager.primaryRed,
              child: Icon(
                Icons.location_on,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 10),
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bengaluru',
                  style: FontManager.smallBoldStyle,
                ),
                Text(
                  'BTM Layout, 500628',
                  style: FontManager.smallBoldStyle,
                ),
              ],
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_forward_ios_outlined,
            size: 20,
          ),
        )
      ],
    );
  }
}
