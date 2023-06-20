import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hypermart/core/constants/approute_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/constants/image_manager.dart';
import 'package:hypermart/core/constants/media_query.dart';
import 'package:hypermart/core/service/setting_services.dart';

class ProfileLogOutWidget extends StatelessWidget {
  const ProfileLogOutWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        onTap: () async {
          await services.sharedPreferences.clear().then((value) {
            Get.offAllNamed(AppRouteManager.login);
          });
        },
        child: Card(
          // margin: EdgeInsets.all(10),
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(
              color: Colors.grey[400] as Color,
              width: 2,
            ),
          ),
          child: Container(
            width: double.infinity,
            height: MediaQueryManager(context).height / 14,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  ImageManager.iconLogout,
                  color: Colors.grey[600],
                  width: 40,
                  height: 40,
                ),
                const SizedBox(width: 20),
                Text(
                  'Log Out',
                  style: FontManager.latoBold.copyWith(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
