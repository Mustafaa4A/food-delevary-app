import 'package:flutter/material.dart';
import 'package:food_order_app/widgets/category_widget.dart';
import 'package:food_order_app/data/categories_list.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        child: Row(
          children: categories
              .map((item) => CategoryWidget(image: item.img, name: item.name))
              .toList(),
        ),
      ),
    );
  }
}
