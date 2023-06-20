import 'package:get/get.dart';
import 'package:hypermart/core/class/meddliwere.dart';
import 'package:hypermart/core/constants/approute_manager.dart';
import 'package:hypermart/core/service/binding_services.dart';
import 'package:hypermart/view/screen/auth/forgetpassword_screen.dart';
import 'package:hypermart/view/screen/auth/login_screen.dart';
import 'package:hypermart/view/screen/auth/resetpassword_screen.dart';
import 'package:hypermart/view/screen/auth/signup_screen.dart';
import 'package:hypermart/view/screen/auth/verification_screen.dart';
import 'package:hypermart/view/screen/home/homePage_screen.dart';
import 'package:hypermart/view/screen/home/details_screen.dart';
import 'package:hypermart/view/screen/home/profile_screen.dart';
import 'package:hypermart/view/screen/start/onboarding_screen.dart';

class PageData {
  List<GetPage> getPages = [
    GetPage(
        name: AppRouteManager.onboarding,
        page: () => OnboardingScreen(),
        binding: AuthenticationBinding(),
        middlewares: [AuthMiddleware()]),
    GetPage(
        name: AppRouteManager.login,
        page: () => LoginScreen(),
        binding: AuthenticationBinding(),
        middlewares: [AuthMiddleware()]),
    GetPage(
        name: AppRouteManager.signUp,
        page: () => SignUpScreen(),
        binding: AuthenticationBinding()),
    GetPage(
        name: AppRouteManager.forgotPassword,
        page: () => ForgotPasswordScreen(),
        binding: AuthenticationBinding()),
    GetPage(
        name: AppRouteManager.verification,
        page: () => const VerificationScreen(),
        binding: AuthenticationBinding()),
    GetPage(
        name: AppRouteManager.resetPassword,
        page: () => ResetPasswordScreen(),
        binding: AuthenticationBinding()),
    //////////////////////
    ////////////////////////////////////
    GetPage(name: AppRouteManager.homePage, page: () => HomePageScreen()),
    GetPage(
      name: AppRouteManager.details,
      page: () => DetailsScreen(
        listInfo: [],
        productId: 0,
      ),
    ),
    GetPage(name: AppRouteManager.profile, page: () => ProfileScreen()),
  ];
}
