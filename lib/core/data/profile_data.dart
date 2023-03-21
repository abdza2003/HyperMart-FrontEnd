import 'package:hypermart/core/constants/image_manager.dart';
import 'package:hypermart/core/model/home/profile_model.dart';

class ProfileData {
  static List<ProfileModel> mainInfo = [
    ProfileModel(
        iconTitle: 'you have visited before', iconPath: ImageManager.iconClock),
    ProfileModel(
        iconTitle: 'discount coupons', iconPath: ImageManager.iconCoupon2),
    ProfileModel(
        iconTitle: 'hypermart wallet', iconPath: ImageManager.iconWallet),
  ];
  static List<ProfileModel> orders = [
    ProfileModel(iconTitle: 'all orders', iconPath: ImageManager.iconBox),
    ProfileModel(iconTitle: 'ratings', iconPath: ImageManager.iconStar),
    ProfileModel(iconTitle: 'favorite', iconPath: ImageManager.iconFavorite),
  ];
  static List<ProfileModel> account = [
    ProfileModel(
        iconTitle: 'Store I Flow', iconPath: ImageManager.iconEcommerce),
    ProfileModel(
        iconTitle: 'Customer Services',
        iconPath: ImageManager.iconcustomerService),
    ProfileModel(iconTitle: 'My Settings', iconPath: ImageManager.iconSetting),
    ProfileModel(
        iconTitle: 'My Addresses', iconPath: ImageManager.iconLocation),
  ];
}
