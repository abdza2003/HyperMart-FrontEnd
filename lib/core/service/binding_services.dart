import 'package:get/get.dart';
import 'package:hypermart/controller/auth/forgotPassword_controller.dart';
import 'package:hypermart/controller/auth/login_controller.dart';
import 'package:hypermart/controller/auth/resetPassowrd_controller.dart';
import 'package:hypermart/controller/auth/signup_controller.dart';
import 'package:hypermart/controller/auth/verification_controller.dart';
import 'package:hypermart/controller/home/detailsPage_controller.dart';
import 'package:hypermart/controller/home/homePage_controller.dart';
import 'package:hypermart/controller/start/onboarding_controller.dart';
import 'package:hypermart/core/service/setting_services.dart';

class AuthenticationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingControllerImp(), fenix: true);
    Get.lazyPut(() => LoginControllerImp(), fenix: true);
    Get.lazyPut(() => SignUpControllerImp(), fenix: true);
    Get.lazyPut(() => ForgotPasswordControllerImp(), fenix: true);
    Get.lazyPut(() => VerificationControllerImp(), fenix: true);
    Get.lazyPut(() => ResetPasswordControllerImp(), fenix: true);
    Get.lazyPut(() => HomePageControllerImp(), fenix: true);
    Get.lazyPut(() => SettingServices(), fenix: true);
    // Get.lazyPut(() => DetailsPageControllerImp(), fenix: false);
    Get.put(DetailsPageControllerImp(), permanent: true);
  }
}
