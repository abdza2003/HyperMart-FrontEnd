import 'package:hypermart/core/constants/image_manager.dart';
import 'package:hypermart/core/functions/hex_color.dart';
import 'package:hypermart/core/model/home/categories_model.dart';

class CategoriesData {
  static List<CategoriesModel> categoriesData = [
    CategoriesModel(
      categoryPath: ImageManager.iconCate1,
      categoryName: 'Groceries',
      color: HexColor('#4AB7B6'),
    ),
    CategoriesModel(
      categoryPath: ImageManager.iconCate2,
      categoryName: 'Appliances',
      color: HexColor('#4B9DCB'),
    ),
    CategoriesModel(
      categoryPath: ImageManager.iconCate3,
      categoryName: 'Fashion',
      color: HexColor('#AF558B'),
    ),
    CategoriesModel(
        categoryPath: ImageManager.iconCate4,
        categoryName: 'Furniture',
        color: HexColor('#A187D9')),
  ];
}
