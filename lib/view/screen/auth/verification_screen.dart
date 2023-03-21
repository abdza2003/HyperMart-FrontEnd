import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:hypermart/controller/auth/verification_controller.dart';
import 'package:hypermart/core/constants/approute_manager.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/constants/image_manager.dart';
import 'package:hypermart/view/screen/else/background.dart';
import 'package:hypermart/view/screen/home/homePage_screen.dart';
import 'package:hypermart/view/widget/auth/passwordBody_widget.dart';
import 'package:lottie/lottie.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  // late OtpFieldController otpController;
  VerificationControllerImp controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background(),
          Padding(
            padding: EdgeInsets.all(20),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                PasswordBodyWidget(
                  iconPath: ImageManager.iconVerifyCode,
                  headTitle: 'CONFIRMATION',
                  bodyTitle:
                      'please type the verification code \n sent to \n  ${controller.sendedEmail}',
                ),
                OTPTextField(
                    length: 5,
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldWidth: 60,
                    fieldStyle: FieldStyle.underline,
                    isDense: true,
                    style: FontManager.boldStyle.copyWith(
                      fontSize: 20,
                    ),
                    otpFieldStyle: OtpFieldStyle(
                      focusBorderColor: ColorManager.primaryRed,
                    ),
                    onChanged: (pin) {},
                    onCompleted: (pin) {
                      // Get.offNamed(AppRouteManager.login);
                      controller.getVerificationCode(pin);
                    }),
                const SizedBox(height: 20),
                GetBuilder<VerificationControllerImp>(
                  builder: (controller) => Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: RichText(
                            text: TextSpan(
                          text: 'To send again, ',
                          style: FontManager.boldStyle.copyWith(
                            fontSize: 20,
                          ),
                          children: [
                            TextSpan(
                              text: 'click here',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  // print('dsffdsdfds');
                                  print('${controller.timerText}');
                                  if (controller.timerText == '00 : 00') {
                                    await controller.sendVerificationCode();
                                  }
                                },
                              style: FontManager.boldStyle.copyWith(
                                  fontSize: 20,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 2.4,
                                  color: ColorManager.primaryRed.withOpacity(
                                    controller.timerText == '00 : 00' ? .9 : .3,
                                  )),
                            ),
                          ],
                        )),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          '${controller.timerText}',
                          style: FontManager.regularStyle,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
