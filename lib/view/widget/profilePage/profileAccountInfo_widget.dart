import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/data/profile_data.dart';

class ProfileAccountInfo extends StatelessWidget {
  const ProfileAccountInfo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      elevation: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'My Account & Help',
              style: FontManager.latoBold.copyWith(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: 500,
            child: Divider(
              color: Colors.grey[400],
              thickness: .9,
            ),
          ),
          ...List.generate(
            ProfileData.account.length,
            (index) => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    onTap: () {
                      print('object');
                    },
                    leading: SvgPicture.asset(
                      ProfileData.account[index].iconPath,
                      color: Colors.grey[600],
                      width: 30,
                      height: 30,
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.black,
                    ),
                    title: Text(
                      ProfileData.account[index].iconTitle,
                      style: FontManager.latoBold.copyWith(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                index != 3
                    ? Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        width: 600,
                        child: Divider(
                          color: Colors.grey[400],
                          thickness: .8,
                        ),
                      )
                    : const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
