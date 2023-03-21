import 'package:get/get.dart';
import 'package:hypermart/controller/auth/login_controller.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/constants/image_manager.dart';
import 'package:hypermart/core/constants/media_query.dart';
import 'package:hypermart/view/screen/auth/signup_screen.dart';
import 'package:hypermart/view/screen/else/background.dart';

import 'package:hypermart/view/widget/auth/bottomText_widget.dart';
import 'package:hypermart/view/widget/auth/google_widget.dart';
import 'package:hypermart/view/widget/auth/mytextfaild_widget.dart';
import 'package:hypermart/view/widget/else/logo_widget.dart';
import 'package:hypermart/view/widget/else/mybutton_widget.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

class LoginScreen extends StatelessWidget {
  // const LoginScreen({super.key});
  LoginControllerImp controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          const Background(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LogoWidget(imageSize: 24),
                  const SizedBox(height: 10),
                  SvgPicture.asset(
                    ImageManager.iconAuth,
                    // width: MediaQueryManager(context).width / 2.7,
                    height: MediaQueryManager(context).height / 4.8,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Log In',
                    style: FontManager.boldStyle,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Please type your information',
                    style: FontManager.regularStyle,
                  ),
                  const SizedBox(height: 20),
                  MyTextFaildWidget(
                    title: 'Email Address',
                    textInputType: TextInputType.emailAddress,
                    textEditingController: controller.emailAddress,
                  ),
                  const SizedBox(height: 20),
                  MyTextFaildWidget(
                      title: 'Password',
                      textEditingController: controller.password),
                  const SizedBox(height: 20),
                  MyButtonWiget(
                      func: () {
                        controller.submit();
                      },
                      buttonTitle: 'Log In'),
                  const SizedBox(height: 20),
                  Container(
                      alignment: Alignment.centerRight,
                      child: RichText(
                        text: TextSpan(
                            text: 'Forget password?!',
                            style: FontManager.smallBoldStyle.copyWith(
                              color: Colors.black38,
                              // fontSize: 10,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                controller.forgetPassword();
                              }),
                      )),
                  const SizedBox(height: 10),
                  GoogleWidget(title: 'or login width'),
                  const SizedBox(height: 20),
                  BottoTextWidget(
                    title1: 'New user?! ',
                    title2: 'Create an Account',
                    func: () {
                      controller.signUp(context);
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
