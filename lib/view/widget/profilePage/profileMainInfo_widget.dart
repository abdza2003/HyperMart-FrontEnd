import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/constants/media_query.dart';
import 'package:hypermart/core/data/profile_data.dart';
import 'package:hypermart/core/service/setting_services.dart';

class ProfileMainInfo extends StatelessWidget {
  const ProfileMainInfo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      margin: const EdgeInsets.all(10),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.grey[300],
                      child: Icon(
                        Icons.person,
                        color: Colors.grey[400],
                        size: 40,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${services.sharedPreferences.getString('user_information')?.split('|')[1]}',
                          style:
                              FontManager.regularStyle.copyWith(fontSize: 15),
                        ),
                        Text(
                          '${services.sharedPreferences.getString('user_information')?.split('|')[0]}',
                          style:
                              FontManager.regularStyle.copyWith(fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_active_outlined,
                    size: 30,
                    color: Colors.grey[400],
                  ),
                )
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
          Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  ProfileData.mainInfo.length,
                  (index) => Column(
                    children: [
                      SvgPicture.asset(
                        ProfileData.mainInfo[index].iconPath,
                        width: 30,
                        color: Colors.grey[400],
                        cacheColorFilter: false,
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        // color: Colors.red,
                        width: MediaQueryManager(context).width / 8,
                        child: Text(
                          ProfileData.mainInfo[index].iconTitle,
                          textAlign: TextAlign.center,
                          style: FontManager.latoBold.copyWith(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
