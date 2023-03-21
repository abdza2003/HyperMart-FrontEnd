import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hypermart/controller/auth/resetPassowrd_controller.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/constants/image_manager.dart';
import 'package:hypermart/view/screen/else/background.dart';
import 'package:hypermart/view/widget/auth/mytextfaild_widget.dart';
import 'package:hypermart/view/widget/else/mybutton_widget.dart';
import 'package:lottie/lottie.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordControllerImp controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const Background(),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Reset Password',
                  style: FontManager.boldStyle.copyWith(
                    fontSize: 25,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Enter new password',
                style: FontManager.boldStyle.copyWith(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              MyTextFaildWidget(title: 'new password'),
              const SizedBox(height: 20),
              Text(
                'Confirm password',
                style: FontManager.boldStyle.copyWith(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              MyTextFaildWidget(title: 'confirm password'),
              const SizedBox(height: 30),
              Container(
                  alignment: Alignment.center,
                  child: MyButtonWiget(
                      func: () {
                        controller.login();
                      },
                      buttonTitle: 'Submit'))
            ],
          ),
        ),
      ],
    ));
  }
}
