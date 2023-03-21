import 'package:hypermart/core/constants/onboarding_manager.dart';
import 'package:hypermart/core/model/start/onboarding_model.dart';

class OnboardingData {
  static List<OnboardingModel> onboardingInfo = [
    OnboardingModel(
      headTitle: OnboardingManager.headTitle,
      imagePath: OnboardingManager.imagePath1,
      bodyTitle: OnboardingManager.bodyTitle1,
      bottomTitle: OnboardingManager.bottomTitle1,
    ),
    OnboardingModel(
      headTitle: OnboardingManager.headTitle,
      imagePath: OnboardingManager.imagePath2,
      bodyTitle: OnboardingManager.bodyTitle2,
      bottomTitle: OnboardingManager.bottomTitle2,
    ),
    OnboardingModel(
      headTitle: OnboardingManager.headTitle,
      imagePath: OnboardingManager.imagePath3,
      bodyTitle: OnboardingManager.bodyTitle3,
      bottomTitle: OnboardingManager.bottomTitle3,
    ),
  ];
}
