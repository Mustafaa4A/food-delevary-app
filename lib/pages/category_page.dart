import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:food_order_app/data/drinks_list.dart';
import 'package:food_order_app/widgets/app_bar_widget.dart';
import 'package:food_order_app/widgets/drawer_wiget.dart';

import '../widgets/cat_widget.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: ListView(children: [
          const AppBarWidget(),

          //category
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Drinks',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: Text(
                    drinkItems.length.toString() + " items",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white.withOpacity(0.6),
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CatWidget(
                          image: drinkItems[0].image, name: drinkItems[0].name),
                      CatWidget(
                          image: drinkItems[1].image, name: drinkItems[1].name),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CatWidget(
                          image: drinkItems[2].image, name: drinkItems[2].name),
                      CatWidget(
                          image: drinkItems[3].image, name: drinkItems[3].name),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CatWidget(
                          image: drinkItems[4].image, name: drinkItems[4].name),
                      CatWidget(
                          image: drinkItems[5].image, name: drinkItems[5].name),
                    ]),
              ],
            ),
          )
        ]),
      ),
      drawer: const DrawerWidget(),
    );
  }
}
