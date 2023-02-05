import 'package:flutter/material.dart';
import 'package:food_order_app/data/popular_items.dart';
import 'package:food_order_app/widgets/popular_item_widget.dart';
import 'package:food_order_app/data/popular_items.dart';

class PopularItemsWidget extends StatelessWidget {
  const PopularItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Row(
            children: popular
                .map((item) => PopularItemWidget(
                    title: item.name,
                    subtitle: item.detail,
                    price: item.price,
                    image: item.image))
                .toList()),
      ),
    );
  }
}
