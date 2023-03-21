import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/data/profile_data.dart';

class ProfileOrderInfo extends StatelessWidget {
  const ProfileOrderInfo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Orders',
                  style: FontManager.latoBold.copyWith(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'go to my orders',
                      style: FontManager.latoBold.copyWith(
                        fontSize: 15,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_right,
                      color: Colors.black54,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 500,
            child: Divider(
              color: Colors.grey[400],
              thickness: .9,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              ProfileData.orders.length,
              (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: ColorManager.primaryRed,
                      child: SvgPicture.asset(
                        ProfileData.orders[index].iconPath,
                        width: 25,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      width: 100,
                      alignment: Alignment.center,
                      child: Text(
                        ProfileData.orders[index].iconTitle,
                        textAlign: TextAlign.center,
                        style: FontManager.latoBold.copyWith(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
