import 'package:hypermart/controller/start/onboarding_controller.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/constants/image_manager.dart';
import 'package:hypermart/core/constants/media_query.dart';
import 'package:hypermart/core/data/onboarding_data.dart';
import 'package:hypermart/view/screen/else/background.dart';
import 'package:hypermart/view/widget/else/logo_widget.dart';
import 'package:hypermart/view/widget/else/mybutton_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  OnboardingControllerImp controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const Background(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  PageView(
                    controller: controller.pageController,
                    onPageChanged: (value) {
                      setState(() {
                        controller.currentPage = value;
                      });
                    },
                    physics: const BouncingScrollPhysics(),
                    children: List.generate(
                      OnboardingData.onboardingInfo.length,
                      (index) => Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          LogoWidget(imageSize: 24),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SvgPicture.asset(
                                ImageManager.iconOnboarding1,
                              ),
                              SvgPicture.asset(
                                ImageManager.iconOnboarding2,
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          SvgPicture.asset(
                            OnboardingData.onboardingInfo[index].imagePath,
                            // width: MediaQueryManager(context).width / 1,
                            height: MediaQueryManager(context).height / 3.4,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            OnboardingData.onboardingInfo[index].bodyTitle,
                            style: FontManager.boldStyle,
                          ),
                          const SizedBox(height: 20),
                          Container(
                            // color: Colors.red,
                            margin: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQueryManager(context).width / 15),
                            child: Text(
                              OnboardingData.onboardingInfo[index].bottomTitle,
                              style: FontManager.regularStyle,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            3,
                            (index) => Container(
                                  width: 10,
                                  height: 10,
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    color: controller.currentPage == index
                                        ? ColorManager.fontBlack
                                        : ColorManager.fontGray,
                                    shape: BoxShape.circle,
                                  ),
                                )),
                      ),
                      const SizedBox(height: 20),
                      MyButtonWiget(
                        func: () {
                          controller.next();
                        },
                        buttonTitle: controller.currentPage ==
                                OnboardingData.onboardingInfo.length - 1
                            ? 'Let’s Get Started'
                            : 'Next',
                      ),
                      const SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          text: 'Skip',
                          style: FontManager.smallBoldStyle.copyWith(
                            color: ColorManager.fontGray,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => controller.skip(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
