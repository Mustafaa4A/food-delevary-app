import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_order_app/widgets/new_item_widget.dart';
import 'package:food_order_app/data/new_list_items.dart';

class NewestItemsWidget extends StatelessWidget {
  const NewestItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
            children: newListItem
                .map((item) => NewItemWidget(
                    title: item.name,
                    subtitle: item.detail,
                    price: item.price,
                    image: item.image))
                .toList()),
      ),
    );
  }
}
