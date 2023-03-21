import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:hypermart/core/constants/media_query.dart';
import 'package:hypermart/core/data/category_data.dart';
import 'package:hypermart/view/widget/home/categories_widget.dart';

class CategoriesListWidget extends StatelessWidget {
  const CategoriesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Categories',
              style: FontManager.boldStyle.copyWith(
                fontSize: 20,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
            )
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          // width: MediaQueryManager(context).width / 1,
          height: MediaQueryManager(context).height / 7,
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            separatorBuilder: (context, index) => const SizedBox(width: 5),
            scrollDirection: Axis.horizontal,
            itemCount: CategoriesData.categoriesData.length,
            itemBuilder: (context, index) {
              return CategoriesWidget(
                categoryPath: CategoriesData.categoriesData[index].categoryPath,
                categoryName: CategoriesData.categoriesData[index].categoryName,
                color: CategoriesData.categoriesData[index].color,
              );
            },
          ),
        ),
      ],
    );
  }
}
