import 'package:hypermart/controller/auth/login_controller.dart';
import 'package:hypermart/controller/auth/signup_controller.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/constants/image_manager.dart';
import 'package:hypermart/core/constants/media_query.dart';
import 'package:hypermart/view/screen/auth/login_screen.dart';
import 'package:hypermart/view/screen/else/background.dart';

import 'package:hypermart/view/widget/auth/bottomText_widget.dart';
import 'package:hypermart/view/widget/auth/google_widget.dart';
import 'package:hypermart/view/widget/auth/mytextfaild_widget.dart';
import 'package:hypermart/view/widget/else/logo_widget.dart';
import 'package:hypermart/view/widget/else/mybutton_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  SignUpControllerImp controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          const Background(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LogoWidget(imageSize: 24),
                  const SizedBox(height: 20),
                  Text(
                    'Please type your information',
                    style: FontManager.regularStyle,
                  ),
                  const SizedBox(height: 20),
                  MyTextFaildWidget(
                      textEditingController: controller.userName,
                      title: 'Full Name'),
                  const SizedBox(height: 20),
                  MyTextFaildWidget(
                      textEditingController: controller.emailAddress,
                      title: 'Email Address',
                      textInputType: TextInputType.emailAddress),
                  const SizedBox(height: 20),
                  MyTextFaildWidget(
                    textEditingController: controller.password,
                    title: 'Password',
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          margin: EdgeInsets.all(0),
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            // width: 150,
                            alignment: Alignment.center,
                            height: MediaQueryManager(context).height / 15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SvgPicture.asset(
                                  ImageManager.iconSignup,
                                ),
                                Text(
                                  '+1',
                                  style: FontManager.smallBoldStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                          flex: 3,
                          child: MyTextFaildWidget(
                            maxLength: 10,
                            textEditingController: controller.phoneNumber,
                            title: '000-000-0000',
                            textInputType: TextInputType.number,
                          )),
                    ],
                  ),
                  const SizedBox(height: 30),
                  MyButtonWiget(
                      func: () {
                        controller.submit();
                      },
                      buttonTitle: 'Create Account'),
                  const SizedBox(height: 20),
                  GoogleWidget(title: 'or signUp width'),
                  const SizedBox(height: 20),
                  BottoTextWidget(
                    title1: 'Already have an account? ',
                    title2: 'Sign In',
                    func: () {
                      controller.login(context);
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
