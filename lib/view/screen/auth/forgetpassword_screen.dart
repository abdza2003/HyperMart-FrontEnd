import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:hypermart/controller/auth/forgotPassword_controller.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/constants/image_manager.dart';
import 'package:hypermart/view/screen/auth/verification_screen.dart';
import 'package:hypermart/view/screen/else/background.dart';
import 'package:hypermart/view/widget/auth/mytextfaild_widget.dart';
import 'package:hypermart/view/widget/auth/passwordBody_widget.dart';
import 'package:hypermart/view/widget/else/mybutton_widget.dart';
import 'package:lottie/lottie.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordControllerImp controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        body: Stack(
      children: [
        const Background(),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            physics: BouncingScrollPhysics(),
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PasswordBodyWidget(
                iconPath: ImageManager.iconForgetPassword,
                headTitle: 'Forgot password ?!',
                bodyTitle:
                    'please enter your email address to receive a verification code',
              ),
              MyTextFaildWidget(
                textInputType: TextInputType.emailAddress,
                title: 'Email Address .',
                textEditingController: controller.emailAddress,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: MyButtonWiget(
                    func: () {
                      controller.verification();
                      ////////////
                      ////////////////
                    },
                    buttonTitle: 'Send Email'),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
